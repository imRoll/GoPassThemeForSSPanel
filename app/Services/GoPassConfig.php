<?php

namespace App\Services;

class GoPassConfig
{
    public static function get($key)
    {
        global $GoPass_Config;
        return $GoPass_Config[$key];
    }

    public static function getPublicConfig()
    {
        global $GoPass_Config;
        return $GoPass_Config;
    }
}
