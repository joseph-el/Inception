<?php

define( 'DB_NAME', 'wpWebsite' );
define( 'DB_USER', 'yoelidr' );
define( 'DB_PASSWORD', 'dexter' );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         '28(QK6<_pU*gGqK05v90I@q5eHx|j e(&KX(HsEXMIz4O(,101x.{hm_87]Sn(,/');
define('SECURE_AUTH_KEY',  'U_6QMr#%}BZ-5;:S$FGiGpC.iaFnq?v]940w4KAh(s|aA?FYy`4V2ir2-y#(el4O');
define('LOGGED_IN_KEY',    'UswgJo+-7ETI~KZ+xHO#sd_ckVM-Pf.w/>r1>#o:(_`Y)k7gb2hsije+B#Q-T#q,');
define('NONCE_KEY',        ',)tk,YDOE|}&c.p6OP] ^UXb,ZG50=80_i83+#@B*5UCB?BN3YgjUy8~ *f65+24');
define('AUTH_SALT',        '*J)K,Fu[N_du:NN}<B.(f| (pxUaK-td+83IG`hg7y?7_]97r/S%=}h5}O5+^W*0');
define('SECURE_AUTH_SALT', '?h6bhmTG.G%!g?t+scy(9;|+s z>-s B`@iK|v#oDBUqt99+;#[+frxdw%Zrar0Q');
define('LOGGED_IN_SALT',   'l_@Xv~-&[|B[ jRd[g+97==tI+FF0*2Rrg$+yg7Ku|{@am&(Ulx||(+fMNvh2{+D');
define('NONCE_SALT',       'kqAiOSvoEo-T~<:-uWV=R;%G&skl} Kn8o+LsK9Z,+Pic%up]MC>=z5( [e&SFw?');

$table_prefix = 'wp_';

define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
