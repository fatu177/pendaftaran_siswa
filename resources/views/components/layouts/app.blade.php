<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />

    <meta name="application-name" content="{{ config('app.name') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Daftar Peserta</title>


    <style>
        [x-cloak] {
            display: none !important;
        }
    </style>


    @filamentStyles
    @vite('resources/css/app.css')

</head>

<body class="antialiased">

    @livewire()


    {{ $slot }}

    @livewire('notifications')

    @filamentScripts
    @vite('resources/js/app.js')


</body>

</html>
