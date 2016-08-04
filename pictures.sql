-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 04 2016 г., 15:36
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `time_edit` bigint(20) NOT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  `pictures` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pictures`
--

INSERT INTO `pictures` (`id`, `name`, `date_add`, `date_update`, `time_edit`, `is_del`, `pictures`) VALUES
('029c54c6-5a3f-11e6-a46f-68a3c47778d4', '12', '2016-08-04 15:28:55', '2016-08-04 15:28:55', 16033, 1, 'td.cell.cell9.row2=rgb(255, 0, 0)|td.cell.cell8.row2=rgb(255, 0, 0)|td.cell.cell7.row2=rgb(255, 0, 0)|td.cell.cell9.row1=rgb(255, 0, 0)|td.cell.cell8.row1=rgb(255, 0, 0)|td.cell.cell7.row1=rgb(255, 0, 0)|td.cell.cell9.row0=rgb(255, 0, 0)|td.cell.cell8.row0=rgb(255, 0, 0)|td.cell.cell7.row0=rgb(255, 0, 0)'),
('295fc8b4-5a33-11e6-a46f-68a3c47778d4', 'xv', '2016-08-04 14:04:06', '2016-08-04 14:52:31', 15967, 1, 'td.cell.cell7.row4=rgb(255, 255, 0)|td.cell.cell18.row3=rgb(0, 255, 0)|td.cell.cell17.row3=rgb(0, 255, 0)|td.cell.cell16.row3=rgb(0, 255, 0)|td.cell.cell15.row3=rgb(0, 255, 0)|td.cell.cell14.row3=rgb(0, 255, 0)|td.cell.cell8.row3=rgb(255, 255, 0)|td.cell.cell7.row3=rgb(0, 255, 0)|td.cell.cell6.row3=rgb(255, 255, 0)|td.cell.cell2.row3=rgb(0, 255, 0)|td.cell.cell18.row2=rgb(255, 0, 0)|td.cell.cell17.row2=rgb(255, 0, 0)|td.cell.cell16.row2=rgb(255, 0, 0)|td.cell.cell15.row2=rgb(255, 0, 0)|td.cell.cell14.row2=rgb(255, 0, 0)|td.cell.cell2.row2=rgb(0, 255, 0)|td.cell.cell18.row1=rgb(255, 255, 0)|td.cell.cell17.row1=rgb(255, 255, 0)|td.cell.cell16.row1=rgb(255, 255, 0)|td.cell.cell15.row1=rgb(255, 255, 0)|td.cell.cell14.row1=rgb(255, 255, 0)|td.cell.cell11.row1=rgb(255, 0, 0)|td.cell.cell10.row1=rgb(255, 0, 0)|td.cell.cell9.row1=rgb(255, 0, 0)|td.cell.cell8.row1=rgb(255, 0, 0)|td.cell.cell7.row1=rgb(255, 0, 0)|td.cell.cell6.row1=rgb(255, 0, 0)|td.cell.cell5.row1=rgb(255, 0, 0)|td.cell.cell2.row1=rgb(0, 255, 0)|td.cell.cell3.row0=rgb(0, 255, 0)|td.cell.cell2.row0=rgb(0, 255, 0)'),
('856b8c55-5a2c-11e6-a46f-68a3c47778d4', 'Андрей', '2016-08-04 13:21:56', '2016-08-04 14:54:54', 192692, 0, 'td.cell.cell5.row10=rgb(255, 0, 0)|td.cell.cell5.row9=rgb(255, 0, 0)|td.cell.cell13.row8=rgb(0, 255, 0)|td.cell.cell10.row8=rgb(255, 0, 0)|td.cell.cell9.row8=rgb(255, 0, 0)|td.cell.cell8.row8=rgb(255, 0, 0)|td.cell.cell7.row8=rgb(255, 0, 0)|td.cell.cell6.row8=rgb(255, 0, 0)|td.cell.cell5.row8=rgb(255, 0, 0)|td.cell.cell4.row8=rgb(255, 0, 0)|td.cell.cell3.row8=rgb(255, 0, 0)|td.cell.cell2.row8=rgb(255, 0, 0)|td.cell.cell1.row8=rgb(255, 0, 0)|td.cell.cell5.row7=rgb(255, 0, 0)|td.cell.cell13.row6=rgb(255, 0, 0)|td.cell.cell10.row6=rgb(0, 255, 0)|td.cell.cell5.row6=rgb(255, 0, 0)|td.cell.cell6.row5=rgb(255, 0, 0)|td.cell.cell5.row5=rgb(255, 0, 0)|td.cell.cell4.row5=rgb(255, 0, 0)|td.cell.cell12.row4=rgb(255, 0, 0)|td.cell.cell11.row4=rgb(255, 0, 0)|td.cell.cell10.row4=rgb(255, 0, 0)|td.cell.cell9.row4=rgb(255, 0, 0)|td.cell.cell8.row4=rgb(255, 0, 0)|td.cell.cell7.row4=rgb(255, 0, 0)|td.cell.cell6.row4=rgb(255, 0, 0)|td.cell.cell4.row4=rgb(255, 0, 0)|td.cell.cell3.row4=rgb(255, 0, 0)|td.cell.cell2.row4=rgb(255, 0, 0)|td.cell.cell1.row4=rgb(255, 0, 0)|td.cell.cell0.row4=rgb(255, 0, 0)|td.cell.cell14.row3=rgb(255, 0, 0)|td.cell.cell6.row3=rgb(255, 0, 0)|td.cell.cell4.row3=rgb(255, 0, 0)|td.cell.cell15.row2=rgb(0, 255, 0)|td.cell.cell14.row2=rgb(255, 0, 0)|td.cell.cell12.row2=rgb(255, 0, 0)|td.cell.cell11.row2=rgb(0, 255, 0)|td.cell.cell10.row2=rgb(255, 0, 0)|td.cell.cell9.row2=rgb(0, 255, 0)|td.cell.cell7.row2=rgb(255, 255, 0)|td.cell.cell6.row2=rgb(255, 0, 0)|td.cell.cell5.row2=rgb(255, 255, 0)|td.cell.cell4.row2=rgb(255, 0, 0)|td.cell.cell3.row2=rgb(255, 255, 0)|td.cell.cell18.row1=rgb(255, 0, 0)|td.cell.cell17.row1=rgb(255, 0, 0)|td.cell.cell16.row1=rgb(255, 0, 0)|td.cell.cell15.row1=rgb(255, 0, 0)|td.cell.cell13.row1=rgb(255, 0, 0)|td.cell.cell12.row1=rgb(255, 0, 0)|td.cell.cell11.row1=rgb(255, 0, 0)|td.cell.cell9.row1=rgb(0, 255, 0)|td.cell.cell7.row1=rgb(255, 255, 0)|td.cell.cell6.row1=rgb(255, 255, 0)|td.cell.cell5.row1=rgb(255, 255, 0)|td.cell.cell4.row1=rgb(255, 255, 0)|td.cell.cell3.row1=rgb(255, 255, 0)|td.cell.cell14.row0=rgb(255, 0, 0)|td.cell.cell9.row0=rgb(255, 255, 0)|td.cell.cell7.row0=rgb(255, 255, 0)|td.cell.cell6.row0=rgb(255, 0, 0)|td.cell.cell5.row0=rgb(255, 255, 0)|td.cell.cell4.row0=rgb(255, 0, 0)|td.cell.cell3.row0=rgb(255, 255, 0)'),
('904b2448-5a2d-11e6-a46f-68a3c47778d4', 'info', '2016-08-04 13:24:02', '2016-08-04 15:29:33', 35231, 0, 'td.cell.cell19.row1=rgb(255, 255, 0)|td.cell.cell18.row1=rgb(255, 0, 0)|td.cell.cell17.row1=rgb(255, 255, 0)|td.cell.cell16.row1=rgb(255, 0, 0)|td.cell.cell15.row1=rgb(255, 255, 0)|td.cell.cell14.row1=rgb(255, 0, 0)|td.cell.cell13.row1=rgb(255, 255, 0)|td.cell.cell12.row1=rgb(255, 0, 0)|td.cell.cell11.row1=rgb(255, 255, 0)|td.cell.cell10.row1=rgb(255, 0, 0)|td.cell.cell9.row1=rgb(255, 255, 0)|td.cell.cell8.row1=rgb(255, 255, 0)|td.cell.cell7.row1=rgb(255, 255, 0)|td.cell.cell6.row1=rgb(255, 255, 0)|td.cell.cell5.row1=rgb(255, 255, 0)|td.cell.cell4.row1=rgb(255, 0, 0)|td.cell.cell3.row1=rgb(255, 255, 0)|td.cell.cell2.row1=rgb(255, 0, 0)|td.cell.cell1.row1=rgb(255, 255, 0)|td.cell.cell0.row1=rgb(255, 0, 0)|td.cell.cell19.row0=rgb(255, 255, 0)|td.cell.cell18.row0=rgb(255, 0, 0)|td.cell.cell17.row0=rgb(255, 255, 0)|td.cell.cell16.row0=rgb(255, 0, 0)|td.cell.cell15.row0=rgb(255, 255, 0)|td.cell.cell14.row0=rgb(255, 0, 0)|td.cell.cell13.row0=rgb(255, 255, 0)|td.cell.cell12.row0=rgb(255, 0, 0)|td.cell.cell11.row0=rgb(255, 255, 0)|td.cell.cell10.row0=rgb(255, 0, 0)|td.cell.cell9.row0=rgb(255, 255, 0)|td.cell.cell8.row0=rgb(255, 255, 0)|td.cell.cell7.row0=rgb(255, 255, 0)|td.cell.cell6.row0=rgb(255, 255, 0)|td.cell.cell5.row0=rgb(255, 255, 0)|td.cell.cell4.row0=rgb(255, 0, 0)|td.cell.cell3.row0=rgb(255, 255, 0)|td.cell.cell2.row0=rgb(255, 0, 0)|td.cell.cell1.row0=rgb(255, 255, 0)|td.cell.cell0.row0=rgb(255, 0, 0)'),
('d137842c-5a2d-11e6-a46f-68a3c47778d4', 's', '2016-08-04 14:29:24', '2016-08-04 14:39:33', 4839, 1, 'td.cell.cell6.row2=rgb(255, 0, 0)|td.cell.cell13.row1=rgb(255, 0, 0)|td.cell.cell12.row1=rgb(0, 255, 0)|td.cell.cell11.row1=rgb(255, 0, 0)|td.cell.cell10.row1=rgb(0, 255, 0)|td.cell.cell9.row1=rgb(255, 0, 0)|td.cell.cell8.row1=rgb(0, 255, 0)|td.cell.cell6.row1=rgb(0, 255, 0)'),
('e654178a-5a3e-11e6-a46f-68a3c47778d4', '1', '2016-08-04 15:28:08', '2016-08-04 15:28:27', 15213, 0, 'td.cell.cell5.row4=rgb(255, 0, 0)|td.cell.cell4.row4=rgb(255, 0, 0)|td.cell.cell7.row3=rgb(255, 0, 0)|td.cell.cell6.row3=rgb(255, 0, 0)|td.cell.cell5.row3=rgb(255, 0, 0)|td.cell.cell4.row3=rgb(255, 0, 0)|td.cell.cell3.row3=rgb(255, 0, 0)|td.cell.cell2.row3=rgb(255, 0, 0)|td.cell.cell5.row2=rgb(255, 0, 0)|td.cell.cell4.row2=rgb(255, 0, 0)|td.cell.cell6.row1=rgb(255, 0, 0)|td.cell.cell5.row1=rgb(255, 0, 0)|td.cell.cell4.row1=rgb(255, 0, 0)|td.cell.cell3.row1=rgb(255, 0, 0)|td.cell.cell6.row0=rgb(255, 0, 0)|td.cell.cell5.row0=rgb(255, 0, 0)|td.cell.cell4.row0=rgb(255, 0, 0)|td.cell.cell3.row0=rgb(255, 0, 0)'),
('e9b0608a-5a3f-11e6-a46f-68a3c47778d4', '5', '2016-08-04 15:35:23', '2016-08-04 15:35:38', 10537, 0, 'td.cell.cell18.row1=rgb(255, 0, 0)|td.cell.cell17.row1=rgb(255, 0, 0)|td.cell.cell16.row1=rgb(255, 0, 0)|td.cell.cell15.row1=rgb(255, 0, 0)|td.cell.cell14.row1=rgb(255, 0, 0)|td.cell.cell8.row1=rgb(255, 0, 0)|td.cell.cell6.row1=rgb(255, 0, 0)|td.cell.cell5.row1=rgb(255, 0, 0)|td.cell.cell4.row1=rgb(255, 0, 0)');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
