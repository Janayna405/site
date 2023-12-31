<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'site' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost');

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

define ('WP_DEBUG', true);

/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}


define('AUTH_KEY',         'LAMbQrzQmhbT28taqMGxtXi/dsWGKXRm5CMXOdk0K6vKwcFMorbi2SdUhWDAoxOhWHavZodIl2ynXQQi4CNHig==');
define('SECURE_AUTH_KEY',  'il1eetTvggty8RNKcuwruvhHEJXyx1fiJIVvEJeYGwN+wfTcWj8VCSPF+LiNiKyebGUP/3xm/gxxrdkGVtHNlw==');
define('LOGGED_IN_KEY',    '+051clgBEl7GcX9umEqiXA16nSYJCWW3fpdyDc6eIQsU9/59DNuQREPkXfhLesFgG1ikhs9wPhw+vi2xaEnULw==');
define('NONCE_KEY',        'FMpOxvta1bB3pQQA+1Sld7Xcv+BfRw6CDLbNXKNNWbgr2/0Ujvl5c1258LmznA8ovEOkH/t5tlmzOOFxEw62zA==');
define('AUTH_SALT',        'hszJ3YQtI0yea8luYfb971ieGP5c70ByvdTvmqVzYAU0d8YMhec8zU+n3fcknR36WAiuZEzqo3MsqalTO1n9bQ==');
define('SECURE_AUTH_SALT', '0Au3pwTnMNCd8J7QOFIkbM0G1sPRQQZ33NCVop6zKFwBkgIOrHZ1oJX8hvlXTSso82mQ56UlSmlbExoGZSrvWQ==');
define('LOGGED_IN_SALT',   'CgDXu+LKtVPzDmlPVp41arnke/87bA6a9gi777cMsXkxcZo/URr8UM6BWkZupumeO1lnpdqOrYdmSqpBwlTaug==');
define('NONCE_SALT',       'SeQrZdsYS8BdwRD8BCzG5Jjflx+OaMGzSWvsypGjRKUHw/ssQgKh+6l11izyOARafJalgA0K5zuElpQv4bVN1Q==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
