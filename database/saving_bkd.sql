SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

<br />
<b>Fatal error</b>:  Uncaught TypeError: PhpMyAdmin\Export::exportDatabase(): Argument #3 ($whatStrucOrData) must be of type string, null given, called in C:\xampp\phpMyAdmin\libraries\classes\Controllers\ExportController.php on line 549 and defined in C:\xampp\phpMyAdmin\libraries\classes\Export.php:717
Stack trace:
#0 C:\xampp\phpMyAdmin\libraries\classes\Controllers\ExportController.php(549): PhpMyAdmin\Export-&gt;exportDatabase('saving_bkd', Array, NULL, Array, Array, Object(PhpMyAdmin\Plugins\Export\ExportSql), '\n', 'index.php?route...', 'database', false, false, false, false, Array, '')
#1 C:\xampp\phpMyAdmin\libraries\classes\Routing.php(187): PhpMyAdmin\Controllers\ExportController-&gt;index(Array)
#2 C:\xampp\phpMyAdmin\index.php(18): PhpMyAdmin\Routing::callControllerForRoute('/export', Object(FastRoute\Dispatcher\GroupCountBased), Object(Symfony\Component\DependencyInjection\ContainerBuilder))
#3 {main}
  thrown in <b>C:\xampp\phpMyAdmin\libraries\classes\Export.php</b> on line <b>717</b><br />
