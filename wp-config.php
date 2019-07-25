<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'captain' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', '127.0.0.1' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'V99(VKG$wFLx4p,or|ujY9ty~pp%C|{BC@[36qKc?}[=R=8sJ!e/T;*`gy(6Oxp>' );
define( 'SECURE_AUTH_KEY',  ',tLF(F8Sau,Zxo>c1@0!_&t>Xt;fQoV){a.ZAzZpZ<<Vhsuz!XCX-n${wODGAPGP' );
define( 'LOGGED_IN_KEY',    '8j5qZx*&7ntp@^0!Kv&k^>ah>}*L(>Vzb(@nT0fHo|HdHmU!bTN%y7))]XW]cgX[' );
define( 'NONCE_KEY',        '=WaI?iUjJOI:jTdnnkQK;-SMI3.;T{L4->n=_5sZ7U4C+fS]!Qgbms)ozWaGXb+^' );
define( 'AUTH_SALT',        'D^IWUCD*OKvcxFU#5;z-kYImih[-|Az7_#3ZzV5zj<;kAbb5wpSyFnXi5AgX<-6B' );
define( 'SECURE_AUTH_SALT', '38(OqLMVE`P08Dfg)b|u~EIG@[WDI;S$<uX#Sn6<b3#5UWHM<gg{c:jZ{mK/V=I0' );
define( 'LOGGED_IN_SALT',   'H~-i{F*!o4_W*BwRA,qK??wK2%sqRf/$fCCf!R2}4^M}=hc2l3f1(d<?&5SyUAl[' );
define( 'NONCE_SALT',       ',{~HWnzwtcin)Ik]k{GG<$lxfPLIJsz^i.ay7]j[BEo_0p%Xr%zFWR~D0o4me|/`' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );
