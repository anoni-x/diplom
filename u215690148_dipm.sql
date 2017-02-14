
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 14 2017 г., 17:56
-- Версия сервера: 10.0.28-MariaDB
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u215690148_dipm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `coefficients`
--

CREATE TABLE IF NOT EXISTS `coefficients` (
  `id_coefficient` int(11) NOT NULL AUTO_INCREMENT,
  `name_coefficient` varchar(100) NOT NULL,
  `value_coefficient` varchar(10) NOT NULL,
  `tittle_coefficient` varchar(255) NOT NULL,
  PRIMARY KEY (`id_coefficient`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `coefficients`
--

INSERT INTO `coefficients` (`id_coefficient`, `name_coefficient`, `value_coefficient`, `tittle_coefficient`) VALUES
(1, 'f_af', '0.3', 'Коефіцієнт обліку підсумкової оцінки для випадку: + підсумкова середня'),
(2, 'a_af', '0.7', 'Коефіцієнт обліку середньої оцінки для випадку: + підсумкова середня'),
(3, 'c_af', '0', 'Коефіцієнт обліку компетентної оцінки для випадку: + підсумкова середня'),
(4, 'f_acf', '0.3', 'Коефіцієнт обліку підсумкової оцінки для випадку: підсумкова + середня + компетентна'),
(5, 'a_acf', '0', 'Коефіцієнт обліку середньої оцінки для випадку: підсумкова + середня + компетентна'),
(6, 'c_acf', '0.7', 'Коефіцієнт обліку компетентної оцінки для випадку: підсумкова + середня + компетентна'),
(7, 'klec', '0.2', 'Вага лекційних годин при підрахунку компетенції'),
(8, 'kself', '0.3', 'Вага годин самостійного опрацювання при підрахунку компетенції'),
(9, 'kprac', '0.6', 'Вага практичних годин при підрахунку компетенції'),
(10, 'klab', '1', 'Вага лабораторних годин при підрахунку компетенції');

-- --------------------------------------------------------

--
-- Структура таблицы `competences_for_professions`
--

CREATE TABLE IF NOT EXISTS `competences_for_professions` (
  `id_compprof` int(11) NOT NULL AUTO_INCREMENT,
  `id_competence` int(11) DEFAULT NULL,
  `id_proffession` int(11) DEFAULT NULL,
  `share_competence` varchar(100) NOT NULL,
  PRIMARY KEY (`id_compprof`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Competences_in_Courses`
--

CREATE TABLE IF NOT EXISTS `Competences_in_Courses` (
  `id_some_competence` int(11) NOT NULL AUTO_INCREMENT,
  `tittle_some_comp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_competence` int(11) DEFAULT NULL,
  `id_courses` int(11) DEFAULT NULL,
  `id_module` int(11) DEFAULT NULL,
  `procent_competence` int(3) NOT NULL,
  `proc_time_kompetence` int(3) NOT NULL,
  PRIMARY KEY (`id_some_competence`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `Competences_in_Courses`
--

INSERT INTO `Competences_in_Courses` (`id_some_competence`, `tittle_some_comp`, `id_competence`, `id_courses`, `id_module`, `procent_competence`, `proc_time_kompetence`) VALUES
(1, 'Створення статичних та динамічних Web-сторінок', 3, 1, 1, 20, 60),
(2, 'Розробка Web-додатків на мові PHP', 4, 1, 2, 20, 54),
(3, 'MySQL у Web-програмуванні', 5, 1, 2, 20, 70),
(4, 'Основи та сучасні технологій Web-програмування', 5, 1, 2, 40, 70),
(5, 'Технології розробки клієнтських сценаріїв', 6, 2, 3, 20, 50),
(6, 'Основи створення та стильового оформлення Web-документів', 2, 2, NULL, 20, 80),
(7, 'Робота з серверами та клієнтськими сценаріями', 6, 2, NULL, 30, 45),
(8, 'Розробка графічного оформлення сайтів', 7, 2, NULL, 50, 68),
(9, '8', NULL, 2, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `competent`
--

CREATE TABLE IF NOT EXISTS `competent` (
  `id_competence` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_competence`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `competent`
--

INSERT INTO `competent` (`id_competence`, `name`, `full_name`) VALUES
(1, 'Створення та стильове оформлення Web-документів', 'Основи створення та стильового оформлення Web-документів'),
(2, 'Основи та сучасні технологій Web-програмування', 'Основи та сучасні технологій Web-програмування'),
(3, 'Створення статичних та динамічних Web-сторінок', 'Створення статичних та динамічних Web-сторінок'),
(4, 'Розробка Web-додатків на мові PHP', 'Розробка Web-додатків на мові PHP використання Ajax викликів'),
(5, 'MySQL у Web-програмуванні', 'Застосування MySQL у Web-програмуванні'),
(6, 'Робота з серверами та клієнтськими сценаріями', 'Адміністрування Web - серверів та забезпечення їх захисту'),
(7, 'Розробка графічного оформлення сайтів', 'Створення динамічних елементів Web-документів. Особливості роботи з даними в Internet'),
(8, 'Аналіз та розробка алгоритмів.', 'Аналіз підбір та розробка алгоритмів для програмних продуктів.'),
(9, 'Спеціальні алгоритми', 'Розробка та реалізація спеціальних алгоритмів'),
(10, 'Робота з структурами даних', 'Аналіз підбір та розробка структур даних для програмних продуктів.'),
(11, 'Проектування компонентів архітектури ПЗ', 'Затність проектувати компоненти архітектури програмного продукту'),
(12, 'Основи методів та технологій аналізу бізнес-процес', 'Методології, методи та засоби аналізу бізнес-процесів систем'),
(13, 'Моделювання програмного забезпечення', 'Основи моделювання програмного забезпечення, типи моделей, основні концепції уніфікованої мови моделювання UML'),
(14, 'Моделювання бізнес процесів систем', 'Моделювання бізнес-процесів системи, для якої створюється програмне забезпечення'),
(15, 'Уявлення про основи інженерії вимог до ПЗ', 'Уявлення про основи інженерії вимог до Програмного Забезпечення'),
(16, 'Розробка специфікації вимог користувачів до ПЗ', 'Розробка специфікації вимог користувачів до ПЗ'),
(17, 'Аналіз вимог до ПЗ, верифікація та атестація', 'Аналіз вимог до ПЗ, виконання їхньої верифікації та атестації'),
(18, 'Уявлення про архітектуру комп''ютерів', 'Уявлення про архітектурні особливості мікропроцесорів та комп’ютерів'),
(19, 'Розробка ПЗ в контексті архітектури комп''ютерів', 'Застосовування знань архітектури комп’ютерів при розробці програмного забезпечення'),
(20, 'Уявлення про структуру та архітектуру ПЗ', 'Сучасні уявлення про структуру та архітектуру програмного забезпечення'),
(21, 'Сполучення та забезпечення роботи пристроїв', 'Сполучення та забезпечення роботи АЛП та пристроїв управління'),
(22, 'Забезпечення захищеності прогарм і даних', 'Забезпечення захищеності програм і даних від несанкціонованих дій'),
(23, 'Використання мережевого ПЗ', 'Задієння можливостей мережевого програмного забезпечення'),
(24, 'Знання основ формування зображень', 'Знання математичних, алгоритмічних та  технічних основ формування зображень'),
(25, 'Розробка моделей растрової графіки', 'Розробка моделей растрової графіки'),
(26, 'Розробка моделей фрактальної графіки', 'Розробка моделей фрактальної графіки'),
(27, 'Розробка моделей векторної графіки', 'Розробка моделей векторної графіки'),
(28, 'Створення документації до програмного продукту', 'Створення технічної документації до програмного продукту'),
(29, 'Навчики переконання та впливу на людей', 'Здатність аргументовано переконувати колег у правильності пропонованого рішення, вміти донести до інших свою позицію'),
(30, 'Письмова й усна комунікація різними мовами', 'Письмова й усна комунікації українською і інозменою мовами'),
(31, 'Проведення ділових перемов з бізнес-партнерами', 'Проведення ділових перемов з бізнес-партнерами'),
(32, 'Управління якістю проекту і ризиками ', 'Управління якістю проекту і ризиками '),
(33, 'Аналіз та оцінка бізнес середовища', 'Аналіз та оцінка бізнес середовища'),
(34, 'Задіяння методики розрахунку економічних показникі', 'Задіяння методики розрахунку економічних показників потеннціалу компанії'),
(35, 'Планування діяльності підприємства', 'Планування діяльності підприємства з метою підвищення його ефективності '),
(36, 'Застосування знань математичної статистики', 'Задієння знань в галузі математичної статистики'),
(37, 'Задієння методів та засобів інженерії ПЗ', 'Задієння методів та засобів інженерії програмного забезпечення'),
(50, 'Знання і використання можливостей ОС', 'Знання і використання можливостей операційних систем'),
(38, 'Реалізація баз даних', 'Реалізація баз даних'),
(39, 'Знання інтернет-технологій', 'Знання інтернет-технологій, уміння працювати в Internet;'),
(40, 'Знання  HTML та CSS', 'Основи стандарту HTML та каскадна таблиця стилів CSS'),
(41, 'Знання та задієння алгебри логіки', 'Знання алгебри логіки, бінарних відношень, аналіз алгоритмічних моделей'),
(42, 'Дискретні структури, алгоритми на графах', 'Здатність працювати з дискретними структурами, реалізовувати основні операції та алгоритми на графах та деревах'),
(43, 'Реалізація шаблонів проектування ПЗ', 'Знання області практичного застосування основних шаблонів проектування'),
(44, 'Моделювання аспектів системи для створюваного ПЗ', 'Моделювання аспектів системи для створюваного ПЗ'),
(45, 'Мінімізування складності ПЗ', 'Мінімізування складності ПЗ за допомогою конвенцій форматування коду, компонент'),
(46, 'Створенння тестів для забезпечення якості ПЗ', 'Знання алгебри логіки, бінарних відношень, аналіз алгоритмічних моделей'),
(47, 'Знання основ управління проектами', 'Здатність працювати з дискретними структурами, реалізовувати основні операції та алгоритми на графах та деревах'),
(48, 'Застосування уінструментів управління проектами', 'Застосування уінструментів управління проектами'),
(49, 'Навички організації та керування колективом', 'Навички організації та керування колективом'),
(51, 'Знання офісних програмних систем', 'Знання офісних програмних систем'),
(52, 'Знання і використання можливостей ОС', 'Знання і використання можливостей операційних систем'),
(53, 'Об''єктно-орієнтованого мислення', 'Об''єктно-орієнтованого мислення'),
(54, 'Базові знання інформатики і операційних систем', 'Базові знання інформатики і операційних систем'),
(55, 'Застосування іноземної мови ', 'Застосування іноземної мови'),
(56, 'Конструювання програмного забезпечення ', 'Конструювання програмного забезпечення '),
(57, 'Побудова та дослідження динамічних систем та їх ст', 'Побудова та дослідження динамічних систем та їх станів'),
(58, 'Конструювання програмного забезпечення ', 'Конструювання програмного забезпечення '),
(59, 'Побудова та дослідження динамічних систем, їх стан', 'Побудова та дослідження динамічних систем та їх станів'),
(60, 'Застосовувати професійно профільованих знань', 'Застосовувати професійно профільованих знань'),
(61, 'Реалізація чисельних методів програмними засобами', 'Здатність реалізації чисельних методів програмними засобами для комп’ютерного моделювання'),
(62, 'Володіння системами прийняття рішень', 'Володіння системами прийняття рішень'),
(63, 'Проктування і розробка  систем підтримки прийняття', 'Проктування і розробка  систем підтримки прийняття рішень, яка базується на знаннях'),
(64, 'Володіння системами прийняття рішень', 'Володіння системами прийняття рішень'),
(65, 'Розробка  систем підтримки прийняття рішень', 'Проктування і розробка  систем підтримки прийняття рішень, яка базується на знаннях'),
(66, 'Основи методів та технологій системного аналізу', 'Основи методів та технологій системного аналізу'),
(67, 'Розуміння етичного кодексу інженера з ПЗ', 'Прийняття етичних рішень, посилаючись на етичний кодекс інженера з програмного забезпечення'),
(68, 'Супроводження та розробка застосунків для тестуван', 'Аналіз стану проекту за допомогою звітів, планування розгортання системи, оцінка якості продукту'),
(69, 'Розуміння етичного кодексу інженера з ПЗ', 'Прийняття етичних рішень, посилаючись на етичний кодекс інженера з програмного забезпечення'),
(70, 'Супроводження та розробка тест-кейсів', 'Аналіз стану проекту за допомогою звітів, планування розгортання системи, оцінка якості продукту');

-- --------------------------------------------------------

--
-- Структура таблицы `Courses`
--

CREATE TABLE IF NOT EXISTS `Courses` (
  `id_courses` int(11) NOT NULL AUTO_INCREMENT,
  `name_courses` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hours` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hours_lections` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hours_practic` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hours_labs` varchar(3) CHARACTER SET utf8 NOT NULL,
  `hours_himself` varchar(3) CHARACTER SET utf8 NOT NULL,
  `kwork` tinyint(1) NOT NULL,
  `exam` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_courses`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Дамп данных таблицы `Courses`
--

INSERT INTO `Courses` (`id_courses`, `name_courses`, `hours`, `hours_lections`, `hours_practic`, `hours_labs`, `hours_himself`, `kwork`, `exam`) VALUES
(1, 'WEB програмування', '56', '30', '10', '10', '6', 1, 0),
(2, 'WEB-дизайн', '56', '26', '8', '20', '2', 0, 0),
(3, 'Алгоритми і структури даних', '84', '60', '16', '4', '2', 0, 1),
(4, 'Аналіз бізнес-процесів', '28', '10', '6', '10', '2', 0, 0),
(5, 'Аналіз вимог до програмного забезпечення', '60', '40', '8', '4', '8', 0, 1),
(6, 'Архітектура комп''ютера', '96', '48', '8', '32', '8', 1, 0),
(7, 'Архітектура та проектування ПЗ', '112', '48', '20', '28', '16', 0, 1),
(8, 'Безпека програм та даних', '42', '26', '4', '10', '2', 0, 1),
(9, 'Методи та засоби реінженерії програмного забезпече', '72', '48', '8', '16', '0', 1, 1),
(10, 'Internet-intranet технології', '56', '36', '6', '10', '4', 0, 0),
(11, 'Графічне та геометричне моделювання', '124', '60', '20', '40', '4', 1, 1),
(12, 'Групова динаміка і комунікації', '84', '74', '4', '4', '2', 0, 0),
(13, 'Дискретні структури', '56', '20', '20', '10', '6', 0, 0),
(14, 'Економіка програмного забезпечення', '56', '30', '20', '0', '6', 0, 0),
(15, 'Емпіричні методи програмної інженерії', '42', '20', '6', '16', '0', 0, 0),
(16, 'Засоби 3D-вимірної графіки', '108', '48', '8', '48', '4', 0, 1),
(17, 'Засоби програмування баз даних і знань', '68', '36', '6', '20', '6', 1, 0),
(18, 'Інструментальні засоби управління контентом', '84', '20', '20', '40', '4', 0, 1),
(19, 'Комп''ютерна дискретна математика', '84', '68', '12', '0', '4', 0, 1),
(20, 'Конструювання програмного забезпечення', '86', '48', '12', '26', '0', 0, 0),
(21, 'Менеджмент проектів програмного забезпечення', '112', '96', '12', '0', '4', 0, 1),
(22, 'Мікропрограмування', '94', '64', '4', '20', '6', 0, 1),
(23, 'Моделювання та аналіз програмного забезпечення', '56', '38', '0', '16', '2', 0, 0),
(24, 'Об''єктно-орієнтоване програмування', '124', '68', '12', '40', '4', 0, 1),
(25, 'Операційні системи', '112', '80', '8', '16', '8', 0, 1),
(26, 'Основи програмної інженерії', '108', '60', '12', '0', '4', 0, 1),
(27, 'Основи програмування', '168', '88', '12', '60', '8', 1, 1),
(28, 'ПЗ дискретних динамічних систем', '68', '48', '8', '8', '4', 0, 0),
(29, 'Програмні середовища реалізації чисельних методів', '56', '42', '8', '2', '4', 0, 0),
(30, 'Програмні середовища реалізації СППР', '68', '48', '8', '4', '8', 0, 0),
(31, 'Програмування Інтернет', '84', '52', '10', '20', '2', 0, 0),
(32, 'Програмування на мікроасемблері', '56', '36', '2', '16', '2', 0, 0),
(33, 'Програмування паралельних та розподілених обчислен', '94', '58', '0', '28', '8', 0, 1),
(34, 'Проектний практикум', '120', '2', '110', '0', '8', 0, 0),
(35, 'Проектування баз даних і знань', '92', '48', '6', '32', '6', 1, 1),
(36, 'Проектування інформаційного та ПЗ економічних сист', '56', '30', '6', '10', '10', 0, 1),
(37, 'Професійна практика програмної інженерії', '86', '66', '4', '0', '16', 0, 0),
(38, 'Системний аналіз ', '84', '66', '4', '6', '8', 0, 1),
(39, 'Системний аналіз та проектування комп''ютерних ІС', '56', '24', '10', '16', '4', 0, 0),
(40, 'Технологія Java', '86', '56', '4', '24', '2', 0, 1),
(41, 'Технологія CUDA', '56', '36', '4', '12', '4', 0, 0),
(42, 'Технологія .NET', '56', '36', '4', '12', '4', 0, 0),
(43, 'Якість програмного забезпечення та тестування', '124', '64', '28', '12', '20', 1, 1),
(44, 'Програмування для мобільних платформ', '112', '64', '4', '28', '16', 0, 1),
(45, 'Управління продажами в ІТ', '68', '54', '8', '0', '6', 0, 0),
(46, 'Управління та стратегічний розвиток ІТ-бізнесу', '68', '54', '4', '0', '10', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `final_marks`
--

CREATE TABLE IF NOT EXISTS `final_marks` (
  `id_main_mark` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `id_cources` int(11) DEFAULT NULL,
  `exam_mark` int(3) NOT NULL,
  `middle_mark` int(3) NOT NULL,
  PRIMARY KEY (`id_main_mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id_info` int(11) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `age` int(2) NOT NULL,
  `city` text NOT NULL,
  `kontact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lang` text NOT NULL,
  `lang_level` text NOT NULL,
  `about` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Learnt_Software`
--

CREATE TABLE IF NOT EXISTS `Learnt_Software` (
  `id_software` int(11) NOT NULL AUTO_INCREMENT,
  `name_software` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `id_competence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_software`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Marks`
--

CREATE TABLE IF NOT EXISTS `Marks` (
  `id_mark` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `id_module` int(11) DEFAULT NULL,
  `mark` int(3) NOT NULL,
  PRIMARY KEY (`id_mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `marks_for_competences`
--

CREATE TABLE IF NOT EXISTS `marks_for_competences` (
  `id_marks_comp` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `id_competence` int(11) DEFAULT NULL,
  `marks_comp` int(3) NOT NULL,
  PRIMARY KEY (`id_marks_comp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Modules`
--

CREATE TABLE IF NOT EXISTS `Modules` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `name_module` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tittle_module` varchar(255) CHARACTER SET utf8 NOT NULL,
  `procent_module` int(3) NOT NULL,
  `id_courses` int(11) NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=190 ;

--
-- Дамп данных таблицы `Modules`
--

INSERT INTO `Modules` (`id_module`, `name_module`, `tittle_module`, `procent_module`, `id_courses`) VALUES
(1, 'Модуль 1', 'Технології створення динамічних веб-сайтів', 25, 1),
(2, 'Модуль 2', 'Створення динамічних веб-сайтів за допомогою PHP, MySQL.', 25, 1),
(3, 'Ректорська', 'Ректорська до предмету WEB програмування', 30, 1),
(4, 'КПІЗ', 'КПІЗ до предмету WEB програмування', 20, 1),
(5, 'Модуль 1', 'Основи створення та стильового оформлення Web-документів', 20, 2),
(6, 'Модуль 2', 'Технології розробки клієнтських сценаріїв', 20, 2),
(7, 'Модуль 3', 'Технології створення динамічних елементів Web-документів. Особливості роботи з даними в Internet', 20, 2),
(8, 'Ректорська', 'Ректорська до предмету WEB-дизайн', 20, 0),
(9, 'КПІЗ', 'КПІЗ до предмету WEB-дизайн', 20, 2),
(10, 'Модуль 1', 'Аналіз та розробка алгоритмів', 15, 3),
(11, 'Модуль 2', 'Сортування та пошук', 15, 3),
(12, 'Модуль 3', 'Структури даних', 15, 3),
(13, 'Модуль 4', 'Спеціальні алгоритми', 15, 3),
(14, 'ЕКЗАМЕН', 'ЕКЗАМЕН З ДИСЦИПЛІНИ "Алгоритми і структури даних"', 40, 3),
(15, 'Моудуль 1', 'Методології, методи та засоби аналізу бізнес-процесів систем', 30, 4),
(16, 'Модуль 2', 'Базові поняття та засоби моделювання програмного забезпечення', 20, 4),
(17, 'Модуль 3', 'Методи моделювання бізнес-процесів систем', 20, 4),
(18, 'РЕКТОРСЬКА', 'Ректорська з дисципліни "Методи моделювання бізнес-процесів систем"', 20, 4),
(19, 'Модуль 1', 'Типи вимог, функціональні, нефункціональні атрибути якості', 20, 5),
(20, 'Модуль 2', 'Специфікація та документування вимог', 20, 5),
(21, 'Модуль 3', 'Мови написання вимог', 20, 5),
(22, 'Модуль 4', 'Основи інженерії вимог до ПЗ', 20, 5),
(23, 'Модуль 5', 'Узгодженння вимог та управління ризиками', 20, 5),
(24, 'Модуль 1', 'Цифрова логіка та Представлення даних', 15, 6),
(25, 'Модуль 2', 'Організація пам’яті комп’ютера', 15, 6),
(26, 'Модуль 3', 'Функціональна організація пристроїв, забезпечення їх взаємодії', 20, 6),
(27, 'Модуль 4', 'Багатопроцесорні та сучасні архітектури', 20, 6),
(28, 'РЕКТОРСЬКА', 'Ректорська з "Багатопроцесорні та сучасні архітектури"', 30, 6),
(29, 'Модуль 1', 'Технології розробки ПЗ ', 15, 7),
(30, 'Модуль 2', 'Структура та архітектура ПЗ', 15, 7),
(31, 'Модуль 3', 'Стратегії і методи проектування ПЗ', 20, 7),
(32, 'Модуль 4', 'Аналіз якості та оцінка програмного дизайну', 20, 7),
(33, 'ЕКЗАМЕН', 'ЕКЗАМЕН з Архітектура та проектування програмного забезпечення', 30, 7),
(34, 'Модуль 1', 'Принципи безпеки та захисту інформації в ПЗ', 25, 8),
(35, 'Модуль 2', 'Основи побудови систем захисту інформації в ПЗ', 25, 8),
(36, 'КПІЗ', 'КПІЗ з "Безпека програм та даних"', 20, 8),
(37, 'РЕКТОРСЬКА', 'РЕКТОРСЬКА з "Безпека програм та даних"', 30, 8),
(38, 'Модуль 1', 'Вступ в реінженерію програмного забезпечення', 20, 9),
(39, 'Модуль 2', 'Процес аналізу і проектування при реінженерії', 20, 9),
(40, 'КПІЗ', 'КПІЗ з "Методи та засоби реінженерії програмного забезпечення"', 20, 9),
(41, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Методи та засоби реінженерії програмного забезпече"', 40, 9),
(42, 'Модуль 1', 'Знання основ internet-intranet технологій', 20, 10),
(43, 'Модуль 2', 'Створення веб-додатків за допомогою мови JavaScript', 25, 10),
(44, 'Модуль 3', 'Технологія AJAX.Об’єктна модель документу (DOM). Бібліотека jQuery.', 25, 10),
(45, 'РЕКТОРСЬКА', 'РЕКТОРСЬКА з "Internet-intranet технології"', 30, 10),
(46, 'Модуль 1', 'Математичні основи двовимірної графіки і тривимірної графіки', 15, 11),
(47, 'Модуль2 ', 'Растрова графіка', 20, 11),
(48, 'Модуль 3', 'Основи роботи з кольором. Моделі кольорів. Калібрування', 15, 11),
(49, 'Модуль 4', 'Векторна иа фрактальна графіка', 20, 11),
(50, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Графічне та геометричне моделювання"', 30, 11),
(51, 'Модуль 1', 'Основи ефективної роботи з колегами, знайомство з мотиваціцєю людей, концепції групової динаміки', 20, 12),
(52, 'Модуль 2', 'Практики витягання вимог: інтерв’ю, сценарії, прототипи, “роз’яснювальні зустрічі”, нагляд', 25, 12),
(53, 'Модуль 3', 'Стратегії вислуховування, переконання та ведення переговорів', 20, 12),
(54, 'Модуль 4', 'Рецензування письмової технічної документації з метою виявлення різного роду проблем', 15, 12),
(55, 'Модуль 5', 'Створення формальної презентації хорошої якості', 15, 12),
(56, 'Модуль 6', 'Принципи ефективної усної комунікації', 15, 12),
(57, 'Модуль 1', 'Вступ до дискретних структур', 40, 13),
(58, 'Модуль 2', 'Елементи логіки', 30, 13),
(59, 'Модуль 3', 'Елементи теорії алгоритмів та автоматів', 30, 13),
(60, 'Модуль 1', 'Особливості функціонування суб’єктів господарювання  за умов ринку', 30, 14),
(61, 'Модуль 2', 'Основні показники ресурсного потенціалу підприємства та ефективність його використвння ', 30, 14),
(62, 'Модуль 3', 'Організація бізнесу та основ менеджменту', 40, 14),
(63, 'Модуль 1', 'Основи описової статистики', 25, 15),
(64, 'Модуль 2', 'Застосування принципів дискретної ймовірності в ІТ ', 25, 15),
(65, 'КПІЗ', 'КПІЗ з "Емпіричні методи програмної інженерії"', 25, 15),
(66, 'РЕКТОРСЬКА', 'РЕКТОРСЬКА з "Емпіричні методи програмної інженерії"', 25, 15),
(67, 'Модуль 1', 'Математичні основи комп’ютерної графіки.Масштабування. Комбіновані перетворення', 25, 16),
(68, 'Модуль 2', 'Засоби створення векторних зображень', 20, 16),
(69, 'Модуль 3', 'Фрактальна графіка ', 20, 16),
(70, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Засоби створення векторних зображень"', 35, 16),
(71, 'Модуль 1', 'Мови запитів до БД; Обробка транзакцій; Розподілені БД', 20, 17),
(72, 'КПІЗ', 'КПІЗ з "Засоби програмування баз даних і знань"', 30, 17),
(73, 'РЕКТОРСЬКА', 'РЕКТОРСЬКА з "Засоби програмування баз даних і знань"', 20, 17),
(74, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Засоби програмування баз даних і знань"', 30, 17),
(75, 'Модуль 1', 'Основи стандарту HTML та каскадна таблиця стилів CSS', 30, 18),
(76, 'Модуль 2', 'Технології створення динамічних елементів Web-документів.', 30, 18),
(77, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Інструментальні засоби управління контентом"', 40, 18),
(78, 'Модуль 1', 'Булева алгебра', 20, 19),
(79, 'Моудль 2', 'Логіка висловлювань та логіка предикатів', 20, 19),
(80, 'Модуль 3', 'Графи та дерева. Основи комбінаторики', 20, 19),
(81, 'Модуль 1', 'Основи конструювання ПЗ', 20, 20),
(82, 'Модуль 2', 'Моделі конструюванн. Типи моделей', 20, 20),
(83, 'Модуль 3', 'Мови конструювання', 20, 20),
(84, 'Модуль 4', 'Якість конструюбвання та інтеграція', 20, 20),
(85, 'РЕКТОРСЬКА', 'РЕКТОРСЬКА з "Якість конструюбвання та інтеграція"', 20, 20),
(86, 'Модуль 1', 'Процеси менеджменту проектів, Життєвий цикл проекту з розробки ПЗ', 15, 21),
(87, 'Модуль 2', 'Управління змістом проекту', 15, 21),
(88, 'Модуль 3', 'Управління строком виконання та вартістю проекту ', 15, 21),
(89, 'Модуль 4', 'Управління людським потенціалом і комунікаціями', 15, 21),
(90, 'Модуль 5', 'Управління якістю проекту і ризиками ', 15, 21),
(91, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Менеджмент проектів програмного забезпечення"', 40, 21),
(92, 'Модуль 1', 'Основні характеристики та особливості роботи мікропроцесорних систем', 15, 22),
(93, 'Модуль 2', 'Проектування мікропроцесорних систем на мікроконтролерах', 15, 22),
(94, 'Модуль 3', 'Структурна організація та режими роботи ОМК РІС', 15, 22),
(95, 'Модуль 4', 'Принципи роботи у середовищі програмування MPLAB', 15, 22),
(96, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Мікропрограмування"', 40, 22),
(97, 'Модуль 1', 'Проектування програмного забезпечення на основі моделі предметної області ', 40, 23),
(98, 'Модуль 2', 'Паттерни проектування ', 30, 23),
(99, 'Модуль 3', 'Мови моделювання програмного забезпечення ', 30, 23),
(100, 'Модуль 1', 'Основні парадигми ООП', 15, 24),
(101, 'Модуль 2', 'Реалізація принципів ООП мовою С++.', 15, 24),
(102, 'Модуль 3', 'Бібліотека стандартних шаблонів STL.', 15, 24),
(103, 'Модуль 4', 'Основи C # і платформа .NET.', 15, 24),
(104, 'Модуль 5', 'Реалізація принципів ООП мовою С#.', 15, 24),
(105, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Об''єктно-орієнтоване програмування"', 25, 24),
(106, 'Модуль 1', 'Основи операційних систем ', 15, 25),
(107, 'Модуль 2', 'Паралельність (багатозадачність) ', 15, 25),
(108, 'Модуль 3', 'Планування та диспетчеризація процесів ', 15, 25),
(109, 'Модуль 4', 'Організація віртуальної пам''яті ', 15, 25),
(110, 'Модуль 5', 'Управління пристроями', 15, 25),
(111, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Операційні системи"', 25, 25),
(112, 'Модуль 1', 'Інженерні основи програмного забезпечення', 15, 26),
(113, 'Модуль 2', 'Основи моделювання', 15, 26),
(114, 'Модуль 3', 'Технології розробки ПЗ', 15, 26),
(115, 'Модуль 4', 'Основи інженерії вимог до ПЗ', 15, 26),
(116, 'КПІЗ', 'КПІЗ з "КПІЗ"', 15, 26),
(117, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Основи програмної інженерії"', 25, 26),
(118, 'Модуль 1', 'Основні поняття програмування', 15, 27),
(119, 'Модуль 2', 'Основні структури в програмуванні', 15, 27),
(120, 'Модуль 3', 'Засоби реалізації основних структур в програмуванні', 15, 27),
(121, 'Модуль 4', 'Функції та робота з строковими змінними', 15, 27),
(122, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Основи програмування"', 40, 27),
(123, 'Модуль 1', 'Моделювання дискретних динамічних систем', 40, 28),
(124, 'Модуль 2', 'Ідентифікація параметрів моделей дискретних динамічних систем', 30, 28),
(125, 'Модуль 3', 'Чисельне моделювання динаміки з використанням програмних засобів', 30, 28),
(126, 'Модуль 1', 'Прямі та ітераційні методи лінійної та нелінійної алгебри', 30, 29),
(127, 'Модуль 2', 'Методи інтерполяції та наближення функцій', 30, 29),
(128, 'Модуль 3', 'Методи розв’язування диференціальних та інтегральних рівнянь', 40, 29),
(129, 'Модуль 1', 'Основи систем підтримки прийняття рішень. Розвиток і запровадження систем.', 15, 30),
(130, 'Модуль 2', 'Базові компоненти систем підтримки прийняття рішень', 15, 30),
(131, 'Модуль 3', 'СППРна основі сховищ даних і OLAP-систем, групові СППР', 15, 30),
(132, 'Модуль 4', 'Засоби штучного інтелекту.в системах  підтримки прийняття рішень ', 15, 30),
(133, 'Модуль 1', 'Структура і принципи WEB', 40, 31),
(134, 'Модуль 2', 'Створення веб-додатків', 30, 31),
(135, 'Модуль 3', 'Клієнтські і серверні сценарії', 30, 31),
(136, 'Модуль 1', 'Архітектура та характеристики процесорів цифрової обробки сигналів', 30, 32),
(137, 'Модуль 2', 'Техніка програмування на мікроасемблері', 30, 32),
(138, 'КПІЗ', 'КПІЗ з "Програмування на мікроасемблері"', 40, 32),
(139, 'Модуль 1', 'Цілі та задачі паралельних обчислень', 30, 33),
(140, 'Модуль 2', 'Оцінка ефективності паралельних обчислень', 30, 33),
(141, 'Модуль 3', 'Програмні засоби розробки паралельних програм', 40, 33),
(142, 'Модуль 1', 'Формування вимог до програмного забезпечення', 30, 34),
(143, 'Модуль 2', 'Проектування програмного забезпечення з використання структурного програмування', 30, 34),
(144, 'Модуль 3', 'Проектування  програмного забезпечення з використання ООП', 40, 34),
(145, 'Модуль 1', 'Інформаційні моделі та системи; Реляційні БД', 30, 35),
(146, 'КПІЗ', 'КПІЗ з "Проектування баз даних і знань"', 30, 35),
(147, 'ЕКЗАМЕН ', 'ЕКЗАМЕН з "Проектування баз даних і знань"', 40, 35),
(148, 'Модуль 1', 'Типи архітектур спеціалізованих СППР', 15, 36),
(149, 'Модуль 2', 'Функції системи обробки даних та генерування результатів ', 15, 36),
(150, 'Модуль 3', 'Характеристика інтерфейсу користувача та принципи його формування ', 15, 36),
(151, 'Модуль 4 ', 'Проектування інтерфейсу на принципах принципах людського фактору, наочність ', 15, 36),
(152, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Проектування інформаційного та програмного забезпечення економічних систем"', 40, 36),
(153, 'Модуль 1', 'Вступ до професійної практики програмної інженерії', 30, 37),
(154, 'Модуль 2', 'Процеси в  практиці  написання коду', 40, 37),
(155, 'Модуль 3', 'Професійна  практика. Артефакти.', 30, 37),
(156, 'Модуль 1', 'Предметна область та основні поняття системного аналізу', 15, 38),
(157, 'Модуль 2', 'Системний аналіз бізнес-процесів об’єктів комп’ютеризації ', 25, 38),
(158, 'Модуль 3', 'Розкриття невизначеностей та аналіз багатофакторних рішень', 20, 38),
(159, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Системний аналіз "', 40, 38),
(160, 'Модуль 1', 'Поняття та принципи системного підходу', 30, 39),
(161, 'Модуль 2', 'Моделі, методи та засоби  моделювання комп’ютеризова- них інформаційних систем', 30, 39),
(162, 'Модуль 3', 'Моделі, методи та засоби  моделювання комп’ютеризова- них інформаційних систем', 40, 39),
(163, 'Модуль 1', 'Вступ в програмування для JVM', 20, 40),
(164, 'Модуль 2', 'Програмування для Android', 20, 40),
(165, 'Модуль 3 ', 'Розробка REST-серверів', 20, 40),
(166, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Технологія Java"', 40, 40),
(167, 'Модуль 1', 'Переваги процесорів нових архітектур', 40, 41),
(168, 'Модуль 2', 'Загальні принципи побудови паралельних алгоритмів і програм', 30, 41),
(169, 'Модуль 3', 'Технологічні аспекти розпаралелення за допомогою технології CUDA   ', 30, 41),
(170, 'Модуль 1', 'Організація та застосування .NET. Основи C#. Класи та об''єкти C#.', 40, 42),
(171, 'Модуль 2', 'Основи використання Windows Forms. Організація роботи з даними. Використання Windows API.', 30, 42),
(172, 'Модуль 3', 'Архітектура Інтернет додатку. Основи програмування клієнтської та серверної частин ВЕБ додатків. Розгортання та супровід ВЕБ додатків', 30, 42),
(173, 'Модуль 1', 'Методи проведення тестів. Автоматизовані засоби тестування', 20, 43),
(174, 'Модуль 2', 'Автоматизовані засоби тестування', 20, 43),
(175, 'Модуль 3', 'Процеси управління якістю програмного забезпечення', 20, 43),
(176, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Якість програмного забезпечення та тестування"', 40, 43),
(177, 'Модуль 1', 'Основи мобільних технологій', 20, 44),
(178, 'Модуль 2', 'Програмування для мобільних платформ', 20, 44),
(179, 'Модуль 3', 'Розробка мобільних додатків під OC Android', 20, 44),
(180, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Програмування для мобільних платформ"', 40, 44),
(181, 'Модуль 1', 'Сучасна методологія управління продажами в ІТ', 30, 45),
(182, 'Модуль 2', 'Концепції управління продажами та особливості організації процесу управління продажами в ІТ', 40, 45),
(183, 'Модуль 3', 'Технічні системи підтримки управління продажами та післяпродажного обслуговування в ІТ', 30, 45),
(184, 'Модуль 1', 'Розробка  та підбір бізнес-ідеї для започаткування START-UP', 15, 46),
(185, 'Модуль 2', 'Застосування сучасних  CRM-технологій', 15, 46),
(186, 'Модуль 3', 'Розробка архітектури всіх бізнес-процесів підприємства', 15, 46),
(187, 'Модуль 4', 'Автоматизація ІТ-бізнесу, кадрових резервів, звітності для персоналу', 15, 46),
(188, 'Модуль 5', 'Інтерактивний маркетинг, просування в соціальних  мережах, ведення віртуального ІТ-бізнесу ', 15, 46),
(189, 'ЕКЗАМЕН', 'ЕКЗАМЕН з "Управління та стратегічний розвиток ІТ-бізнесу"', 25, 46);

-- --------------------------------------------------------

--
-- Структура таблицы `Professions`
--

CREATE TABLE IF NOT EXISTS `Professions` (
  `id_proffession` int(11) NOT NULL AUTO_INCREMENT,
  `name_proffession` varchar(100) NOT NULL,
  `recomendation` text NOT NULL,
  PRIMARY KEY (`id_proffession`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `id_score` int(11) NOT NULL AUTO_INCREMENT,
  `id_competence` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `score` tinyint(1) NOT NULL,
  `type_work_and_treaning` int(11) NOT NULL,
  `time` int(2) NOT NULL,
  PRIMARY KEY (`id_score`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `scores`
--

INSERT INTO `scores` (`id_score`, `id_competence`, `userId`, `score`, `type_work_and_treaning`, `time`) VALUES
(1, 1, 1, 0, 0, 0),
(2, 6, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `evaluation` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userEmail` (`userEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `evaluation`) VALUES
(1, 'Test Test', 'test@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0),
(2, 'New', 'new@gmail.com', '9f852eee197ff3ac52ec1eea6ccbb51c669ce8b75a6f2d914d12dc511b18dfb3', 0),
(4, 'qwerty', 'qwerty@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0),
(5, 'qwerty', 'qwerty@ukr.net', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;