<?php

namespace App\Middleware;

use App\Services\Auth as AuthService;

class Auth
{
    /**
     * @param \Slim\Http\Request    $request
     * @param \Slim\Http\Response   $response
     * @param callable              $next
     *
     * @return \Slim\Http\Response
     */
    public function __invoke($request, $response, $next)
    {
        $user = AuthService::getUser();
        if (!$user->isLogin) {
            return $response->withStatus(302)->withHeader('Location', '/auth/login');
        }
        $enablePages = array('/user/disable', '/user/backtoadmin', '/user/logout');
        if ($user->enable == 0 && !in_array($_SERVER['REQUEST_URI'], $enablePages)) {
            return $response->withStatus(302)->withHeader('Location', '/user/disable');
        }
        if ($user->is_agent != 1 && $_SERVER["REQUEST_URI"] == "/user/agent") {
            $newResponse = $response->withStatus(302)->withHeader('Location', '/user');
            return $newResponse;
        }
        return $next($request, $response);
    }
}
