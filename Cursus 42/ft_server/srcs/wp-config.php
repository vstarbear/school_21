<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress');
/** MySQL database username */
define( 'DB_USER', 'root' );
/** MySQL database password */
define( 'DB_PASSWORD', '' );
/** MySQL hostname */
define( 'DB_HOST', 'localhost' );
/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );
/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' Z/gmsadyV0(i+W?<3DRPUEEfkpL9LZPdsVP%BKVE~#Rq#GHdA|H%J;CwQ6!T^GS');
define('SECURE_AUTH_KEY',  ')(]Qn?;L-S1K<Ia_Z)=Ti]AI-+R7z<0Zg%:<+iWU7TL/3ln]E)/j#m6[l/`WY,-m');
define('LOGGED_IN_KEY',    '5Dc94++GAtuV%&R:IA~gopWH,(+xXaJ.n n/mWI- iqg1|sXM;kabGpBH4Iz?n%0');
define('NONCE_KEY',        'P+:8E|E|x$5JuqUke|dF{Y#twzOZQ{nTZ-]nW6QTgu4u>;-XQr@BBv q^ft.eO_d');
define('AUTH_SALT',        'OGvGVbw y2oK$u-H=V`vC AoixApgp;MUI.,3%B&mP>y$NX1eP>*}nQ~@D7g!*-C');
define('SECURE_AUTH_SALT', 'c`+L._V!#<UEY|O*!G/mZbtz]9*.D`UI6-I1-k k[gZx/[J,?`%|+LAnK>*@,mv#');
define('LOGGED_IN_SALT',   'YMKf-/H^=+1{(CgQ6|_s*GWAy%~-W1x4hp>j0oUkW@=( K%$oS0;kfS NJ<4DVS?');
define('NONCE_SALT',       'Dd<zk:+Dq=/@T)F&p+.MzD*}bL}5ct|-6Y+:z;Rn_.Bw[Y`# 4GMrC-+sm+fI6;!');
/**#@-*/
/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';
/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );
/* That's all, stop editing! Happy publishing. */
/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

