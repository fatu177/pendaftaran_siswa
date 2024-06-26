<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/css/tw-elements.min.css" />
    <script src="https://cdn.tailwindcss.com/3.3.0"></script>
    <script>
        tailwind.config = {
            darkMode: "class",
            theme: {
                fontFamily: {
                    sans: ["Roboto", "sans-serif"],
                    body: ["Roboto", "sans-serif"],
                    mono: ["ui-monospace", "monospace"],
                },
            },
            corePlugins: {
                preflight: false,
            },
        };
    </script>
    <title>Document</title>
</head>

<body>
    <div>
        <!-- Main navigation container -->
        <nav class="relative flex w-full flex-wrap items-center justify-between bg-zinc-200 py-2 shadow-dark-mild dark:bg-neutral-700 lg:py-4"
            data-twe-navbar-ref>
            <div class="flex w-full flex-wrap items-center justify-between px-3">
                <div>
                    <a class="mx-2 my-1 flex items-center lg:mb-0 lg:mt-0" href="{{ route('peserta') }}">
                        <img class="me-2" src="{{ asset('images/logo.jpeg') }}" style="height: 50px" alt="PPKD JP"
                            loading="lazy" />
                    </a>
                </div>

                <!-- Hamburger button for mobile view -->
                <button
                    class="block border-0 bg-transparent px-2 text-black/50 hover:no-underline hover:shadow-none focus:no-underline focus:shadow-none focus:outline-none focus:ring-0 dark:text-neutral-200 lg:hidden"
                    type="button" data-twe-collapse-init data-twe-target="#navbarSupportedContent4"
                    aria-controls="navbarSupportedContent4" aria-expanded="false" aria-label="Toggle navigation">
                    <!-- Hamburger icon -->
                    <span class="[&>svg]:w-7 [&>svg]:stroke-black/50 dark:[&>svg]:stroke-neutral-200">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                            <path fill-rule="evenodd"
                                d="M3 6.75A.75.75 0 013.75 6h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 6.75zM3 12a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75A.75.75 0 013 12zm0 5.25a.75.75 0 01.75-.75h16.5a.75.75 0 010 1.5H3.75a.75.75 0 01-.75-.75z"
                                clip-rule="evenodd" />
                        </svg>
                    </span>
                </button>

                <!-- Collapsible navbar container -->
                <div class="!visible mt-2 hidden flex-grow basis-[100%] items-center lg:mt-0 lg:!flex lg:basis-auto"
                    id="navbarSupportedContent4" data-twe-collapse-item>
                    <!-- Left links -->
                    <ul class="list-style-none me-auto flex flex-col ps-0 lg:mt-1 lg:flex-row" data-twe-navbar-nav-ref>
                        <!-- Home link -->
                        <li class="my-4 ps-2 lg:my-0 lg:pe-1 lg:ps-2" data-twe-nav-item-ref>
                            <a class="text-black/60 transition duration-200 hover:text-black/80 hover:ease-in-out focus:text-black/80 active:text-black/80 motion-reduce:transition-none dark:text-white/60 dark:hover:text-white/80 dark:focus:text-white/80 dark:active:text-white/80 lg:px-2"
                                aria-current="page" href="{{ route('peserta') }}" data-twe-nav-link-ref>Peserta</a>
                        </li>
                        <li class="my-4 ps-2 lg:my-0 lg:pe-1 lg:ps-2" data-twe-nav-item-ref>
                            <a class="text-black/60 transition duration-200 hover:text-black/80 hover:ease-in-out focus:text-black/80 active:text-black/80 motion-reduce:transition-none dark:text-white/60 dark:hover:text-white/80 dark:focus:text-white/80 dark:active:text-white/80 lg:px-2"
                                aria-current="page" href="{{ route('daftar') }}" data-twe-nav-link-ref>Daftar</a>
                        </li>



                    </ul>
                    <div class="flex items-center">
                        <a href="{{ route('filament.admin.auth.login') }}">

                            <button type="button" data-twe-ripple-init data-twe-ripple-color="light"
                                class="me-3 ms-1 inline-block rounded bg-primary px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-primary-3 transition duration-150 ease-in-out hover:bg-primary-accent-300 hover:shadow-primary-2 focus:bg-primary-accent-300 focus:shadow-primary-2 focus:outline-none focus:ring-0 active:bg-primary-600 active:shadow-primary-2 motion-reduce:transition-none dark:shadow-black/30 dark:hover:shadow-dark-strong dark:focus:shadow-dark-strong dark:active:shadow-dark-strong">
                                Login
                            </button>
                        </a>

                    </div>

                </div>
            </div>
        </nav>

        <x-filament::card style="margin: 50px">
            @livewire(\App\Livewire\peserta::class)
        </x-filament::card>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/tw-elements/js/tw-elements.umd.min.js"></script>
    <script>
        // Initialization for ES Users
        import {
            Collapse,
            initTWE,
        } from "tw-elements";

        initTWE({
            Collapse
        });
    </script>
</body>

</html>
