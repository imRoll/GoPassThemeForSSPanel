<?php

namespace App\Services;

class CoolConfig
{
    public static function get($key)
    {
        global $Cool_Config;
        return $Cool_Config[$key];
    }

    public static function getPublicConfig()
    {
        global $Cool_Config;
        return $Cool_Config;
    }
}
