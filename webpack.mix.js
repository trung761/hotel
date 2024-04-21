const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */
mix.sass('resources/assets/sass/pages/home/home.scss', 'public/css');
mix.sass('resources/assets/sass/pages/mini_apartment/mini_apartment.scss', 'public/css');
mix.sass('resources/assets/sass/pages/rental_apartment/rental_apartment.scss', 'public/css');
mix.sass('resources/assets/sass/pages/apartment_detail/apartment_detail.scss', 'public/css');
mix.sass('resources/assets/sass/pages/contact/contact.scss', 'public/css');
mix.sass('resources/assets/sass/pages/blog/blog.scss', 'public/css');
mix.sass('resources/assets/sass/pages/blog_detail/blog_detail.scss', 'public/css');
mix.sass('resources/assets/sass/pages/auth_user/auth.scss', 'public/css');
mix.sass('resources/assets/sass/pages/user_room/user_room.scss', 'public/css');

mix.js('resources/assets/js/pages/home.js', 'public/js');
mix.js('resources/assets/js/pages/mini_apartment.js', 'public/js');
mix.js('resources/assets/js/pages/rental_apartment.js', 'public/js');
mix.js('resources/assets/js/pages/apartment_detail.js', 'public/js');
mix.js('resources/assets/js/pages/contact.js', 'public/js');
mix.js('resources/assets/js/pages/blog.js', 'public/js');
mix.js('resources/assets/js/pages/blog_detail.js', 'public/js');
mix.js('resources/assets/js/pages/auth.js', 'public/js');
mix.js('resources/assets/js/pages/user_room.js', 'public/js');
mix.js('resources/assets/js/pages/profile.js', 'public/js');

mix.autoload({
    jquery: ['$', 'window.jQuery', "jQuery", "window.$", "jquery", "window.jquery"]
});
