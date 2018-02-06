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
define('DB_NAME', 'power_eq');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gy)|}21,sw,_~ D=-<rv`}u#beO+r`?zU}fJUx#8UN^& q*CSgnOHRetJ3?D{wuL');
define('SECURE_AUTH_KEY',  'Fqz6480f;m//zaQh5@*}Yu8x%2c!j,4|V$oIBIz|.NAtNa7f.i0@B-6}AEYKeEX<');
define('LOGGED_IN_KEY',    'JpYie.?2y*{57E)cKqh`=BX8Up,|C`fzbp6#)>H19kC+R>lU^%3z^T9p5Ple@8$v');
define('NONCE_KEY',        'U#kpsx!$~1X10A0!5KA;dD0[Ek=Rk 5tfb{+qT>rjs@[,;uUINN#0jaT0ThPJ77z');
define('AUTH_SALT',        'olr)2cs[TuSgch5R)1@_yvjgaD4%<;1o}(7WTSa|um6jVrxmNSQzDQM[5 <T (U/');
define('SECURE_AUTH_SALT', 'H(p!;1Y89uK/{<w8J8k #I3+n~)&=&NnPTP-6?j C~YAk>Z:w3|MBs^@ts}?J~&b');
define('LOGGED_IN_SALT',   's`/x&/pDa1?7@KzHN4l~d~dDvTH5XmlwWSoz^z30r0x@U<5PoqV%BlMv^K.gGX}$');
define('NONCE_SALT',       '*4F]v*MV-M%4&1@%cLX7_Qo6Zx,H;{e6hP=2,fd}h $wS721{F1J~R+ORn)aCua2');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
