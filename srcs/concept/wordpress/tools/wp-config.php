<?php

define( 'DB_NAME', 'wp_db' );

define( 'DB_USER', 'ytouate' );

define( 'DB_PASSWORD', 'pass' );

define( 'DB_HOST', 'mariadb' );

define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

define ( 'WP_REDIS_HOST', 'redis' );

define ( 'WP_REDIS_SCHEME', 'tcp' );

define( 'AUTH_KEY',          'Bi Wdm)]+/f-nQyfB?1?BTkd=it#s#@QuTzL2,,_e2AG{*&wg[A)ODBU,]1Jgd=v' );
define( 'SECURE_AUTH_KEY',   '<R $cV>|$i{(s@/PSV9:;nH>?Lf],A=r~Dg/>9^5h:8SVGoEYj}s7{QsPpK#gLlm' );
define( 'LOGGED_IN_KEY',     'q>>OqWGL1J+t*Xda{^4v8kH&#2r$tC,wT*rStZ7@~x;9-ShSF!hgjHOTWhH 9)YG' );
define( 'NONCE_KEY',         '{g<?&TB%+Uen^U*e):7tN)g@tfh+<rI^)P-S*(%`Iw1Jg-hGpSBtw4Mlj;%`Dumd' );
define( 'AUTH_SALT',         ';2-R(D3s2okfz`<&lPbSU$mIj3`v8T2KuG%ANO!? vY`ts+e-oET95!ztOFKbn01' );
define( 'SECURE_AUTH_SALT',  '!HHd%+}ySn|tCds*eN:o$tL-6YA2U)hc(b_m-K`[^k%)>CDrN1He@|-pDQ5wIY8K' );
define( 'LOGGED_IN_SALT',    'QK3f6h9*r|kYB2[oryqT#JO[bx6Ai5L8/vCYy|F7%r)Fx;u3Nq3V,>.yqd}#6(0$' );
define( 'NONCE_SALT',        '1>/^F0;iV_qk*nEz?cf|c+S5)u]lLA}Wq$dx4]aAtp1@Wwg8ejLFf2&Y`E^-8H7g' );
define( 'WP_CACHE_KEY_SALT', 'v0vX9||2m##P3xov8?!gko-.I^`E!-Tr]elPyS1,zYdOaXBiF?r5|XR7bFj(u`-8' );

$table_prefix = 'wp_';

if ( ! defined( 'WP_DEBUG' ) ) {
        define( 'WP_DEBUG', false );
}

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';