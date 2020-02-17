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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'sH9Sdpbps7J2QdHTjw+HFYBryDSIVtTLbGmTH7O0wUuNVyU6b57oEmjWeHB37Bi9GxV5IRDAeYFzglL2zHJ6MQ==');
define('SECURE_AUTH_KEY',  'XgzkWOPqx1ozjdenzq4r7hQvJVuerA4X6Z9rVic8q3awtYKTuy7vk5hpdG0rAm6QO2HA09qVLzSLXJXYsNoOMg==');
define('LOGGED_IN_KEY',    '+imvl18WgDngat06sBSsbDqaCTw4ExDfRp6sU9kSsIsDHv2SBTAIexSohRS7nOqKpTBh1AO6lpnrmjKD0be2XQ==');
define('NONCE_KEY',        'T9RI4v8bFpa3P6qkfuG5XssN15c3u+cOrZQveDynFopq3CaosGjZk31Oko9fa0aQps3DMKbhFwTb8z9uDx1Mqg==');
define('AUTH_SALT',        'm34K8Z14JD9SXO+3PWxhup8Qt6B8Pj9Qm1gu3zv214uSYW9J3U38XgkuwW126Zt5mCxPfzIhJqWJB6Zp7teb4g==');
define('SECURE_AUTH_SALT', 'u4GzB7Ed1nyThue0n7CkdYEoYJ+QT8G64CMepxXD9ivpJkKjlPrhz9Pk0x/qo01fi18CW7DbQOSDnD3ayJUCBQ==');
define('LOGGED_IN_SALT',   '3XDaV2gsUfbBPUjxXYeJE+Mqw/DfepPBljG8AOR6lqRXRmKjaXwrebAct1NkCyrtexX8PxjoPpdzQ1kVgbDJDA==');
define('NONCE_SALT',       'm/DQHFDUvoZzZbgxsJLOfz87KM/PYcss7aSiE+Pzi4/5Oc/J4wR6+Bthe0sMTZkKzmu+zo2PoKvjuIbRkRmAzA==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
