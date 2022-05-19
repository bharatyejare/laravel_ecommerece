<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
        'scheme' => 'https',
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],

    'stripe' => [
        'key'    => env('pk_test_51L0mGuSB5cmGu4Y4fLeeTY1jmO2JQGOUf7kIc7gATdjJguk8B8s7QVNBtvQvImM2qiXeHx1gRMg3LxGY00EhpvGi00r0rkUY2t'),
        'secret' => env('sk_test_51L0mGuSB5cmGu4Y4AtODBGMlqRuyW2OGFqLpI4BukUuXP9mNJ4I7Wnpna2HShhnwv9Popay9cLtEhfjcOCKUkJjR00cNUDJSs8'),
       // / 'secret' => env('sk_test_51L0mGuSB5cmGu4Y4AtODBGMlqRuyW2OGFqLpI4BukUuXP9mNJ4I7Wnpna2HShhnwv9Popay9cLtEhfjcOCKUkJjR00cNUDJSs8'),
    ],

];
