<?php
	ob_start();
	session_start();
	require_once 'dbconnect.php';
	
	// if session is not set this will redirect to login page
	if( !isset($_SESSION['user']) ) {
		header("Location: index.php");
		exit;
	}
	// select loggedin users detail
	$res=mysql_query("SELECT * FROM users WHERE userId=".$_SESSION['user']);
	$userRow=mysql_fetch_array($res);
?>
<!DOCTYPE html>
<html>
<head>
<title>Diplom Work</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Badge Sign In Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="formoid_files/formoid1/formoid-biz-red.css" type="text/css" />
<script type="text/javascript" src="formoid_files/formoid1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster|Russo+One" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">

         <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/demo.css">
        <link rel="stylesheet" href="css/pushy.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
</head>
<body>
<div class="menus"><nav class="pushy pushy-left">
    <div class="pushy-content">
        <ul>
            <!-- Submenu -->
           
            <li class="pushy-link"><span class="namex"><a href="#">Привіт <?php echo $userRow['userName']; ?></a><span></li>
            
            <li class="pushy-submenu">
                <button>Функції</button>
                <ul>
                    <li class="pushy-link"><a href="#">Змінити Оцінки</a></li>
                    <li class="pushy-link"><a href="#">Змінити Результати</a></li>
                    <li class="pushy-link"><a href="resume.html">Скачати Резюме</a></li>
                </ul>
            </li>
            <li class="pushy-link"><a href="logout.php?logout">Вийти</a></li>
        </ul>
    </div>
</nav>

<!-- Site Overlay -->
<div class="site-overlay"></div>

<!-- Your Content -->
<div id="container">
    <!-- Menu Button -->
    <button class="menu-btn">&#9776; Menu</button>
</div></div>
  <div class="main"> 
    <h1></h1>
    <div class="login-form"> 
      <h2>Заповніть дані</h2> 
      <form class="formoid-biz-red" style="background-color:#1A2223;font-size:14px;font-family:'Open Sans','Helvetica Neue', 'Helvetica', Arial, Verdana, sans-serif;color:#ECECEC;max-width:480px;min-width:150px" method="post"><div class="title"></div>
  <div class="element-select"><label class="title"><span class="required"><h1>Чи Ви Працювали?</h1></span></label><div class="large"><span><select name="select" required="required">

    <option value="Так">Так</option>
    <option value="Ні">Ні</option></select><i></i></span></div></div>
  <div class="element-select"><label class="title"><span class="required"><hr><h1>Вид Зайнятості</h1></span></label><div class="large"><span><select name="select1" required="required">

    <option value="Повна Ставка">Повна Ставка</option>
    <option value="Не повна Ставка">Не повна Ставка</option>
    <option value="Віддалена Робота (фріланс)">Віддалена Робота (фріланс)</option></select><i></i></span></div></div>
  <div class="element-input"><label class="title"><span class="required"><h1>Вкажіть назву компанії</h1></span></label><input class="large" type="text" name="input" required="required" placeholder="Де ви Працювали?"/></div>
  <div class="element-input"><label class="title"><span class="required"><h1>Вкажіть посаду на якій Ви працювали</h1></span></label><input class="large" type="text" name="input" required="required" placeholder="Ким Ви Працювали?"/></div>
  <div class="element-number"><label class="title"><span class="required"><h1>Вкажіть тривалість роботи</h1></span></label><input class="large" type="text" min="0" max="100" name="number" required="required" placeholder="У місяцях" value=""/></div>
  <div class="element-multiple"><label class="title"><span class="required"><h1>Які навички або знання Ви задіювали на данній роботі </h1></span></label><div class="large"><select data-no-selected="Нічого не вибранно" name="multiple[]" multiple="multiple" required="required">

    <option value="Створення та стильове оформлення Web-документів">Створення та стильове оформлення Web-документів</option>
    <option value="Технології створення динамічних веб-сайтів">Технології створення динамічних веб-сайтів</option>
    <option value="Створення статичних та динамічних Web-сторінок">Створення статичних та динамічних Web-сторінок</option>
    <option value="Розробка Web-додатків на мові PHP">Розробка Web-додатків на мові PHP</option>
    <option value="MySQL у Web-програмуванні">MySQL у Web-програмуванні</option>
    <option value="Робота з серверами та клієнтськими сценаріями">Робота з серверами та клієнтськими сценаріями</option>
    <option value="Розробка графічного оформлення сайтів">Розробка графічного оформлення сайтів</option>
    <option value="Аналіз та розробка алгоритмів.">Аналіз та розробка алгоритмів.</option>
    <option value="Спеціальні алгоритми">Спеціальні алгоритми</option>
    <option value="Робота з структурами даних">Робота з структурами даних</option>
    <option value="Проектування компонентів архітектури ПЗ">Проектування компонентів архітектури ПЗ</option>
    <option value="Основи методів та технологій аналізу бізнес-процес">Основи методів та технологій аналізу бізнес-процес</option>
    <option value="Моделювання програмного забезпечення">Моделювання програмного забезпечення</option>
    <option value="Моделювання бізнес процесів систем">Моделювання бізнес процесів систем</option>
    <option value="Уявлення про основи інженерії вимог до ПЗ">Уявлення про основи інженерії вимог до ПЗ</option>
    <option value="Розробка специфікації вимог користувачів до ПЗ">Розробка специфікації вимог користувачів до ПЗ</option>
    <option value="Аналіз вимог до ПЗ, верифікація та атестація">Аналіз вимог до ПЗ, верифікація та атестація</option>
    <option value="Уявлення про архітектуру комп'ютерів">Уявлення про архітектуру комп'ютерів</option>
    <option value="Розробка ПЗ в контексті архітектури комп'ютерів">Розробка ПЗ в контексті архітектури комп'ютерів</option>
    <option value="Уявлення про структуру та архітектуру ПЗ">Уявлення про структуру та архітектуру ПЗ</option>
    <option value="Сполучення та забезпечення роботи пристроїв">Сполучення та забезпечення роботи пристроїв</option>
    <option value="Забезпечення захищеності прогарм і даних">Забезпечення захищеності прогарм і даних</option>
    <option value="Використання мережевого ПЗ">Використання мережевого ПЗ</option>
    <option value="Знання основ формування зображень">Знання основ формування зображень</option>
    <option value="Розробка моделей растрової графіки">Розробка моделей растрової графіки</option>
    <option value="Розробка моделей фрактальної графіки">Розробка моделей фрактальної графіки</option>
    <option value="Розробка моделей векторної графіки">Розробка моделей векторної графіки</option>
    <option value="Створення документації до програмного продукту">Створення документації до програмного продукту</option>
    <option value="Навчики переконання та впливу на людей">Навчики переконання та впливу на людей</option>
    <option value="Письмова й усна комунікація різними мовами">Письмова й усна комунікація різними мовами</option>
    <option value="Проведення ділових перемов з бізнес-партнерами">Проведення ділових перемов з бізнес-партнерами</option>
    <option value="Управління якістю проекту і ризиками ">Управління якістю проекту і ризиками </option>
    <option value="Аналіз та оцінка бізнес середовища">Аналіз та оцінка бізнес середовища</option>
    <option value="Задіяння методики розрахунку економічних показникі">Задіяння методики розрахунку економічних показникі</option>
    <option value="Планування діяльності підприємства">Планування діяльності підприємства</option>
    <option value="Застосування знань математичної статистики">Застосування знань математичної статистики</option>
    <option value="Задієння методів та засобів інженерії ПЗ">Задієння методів та засобів інженерії ПЗ</option>
    <option value="Знання і використання можливостей ОС">Знання і використання можливостей ОС</option>
    <option value="Реалізація баз даних">Реалізація баз даних</option>
    <option value="Знання інтернет-технологій">Знання інтернет-технологій</option>
    <option value="Знання  HTML та CSS">Знання  HTML та CSS</option>
    <option value="Знання та задієння алгебри логіки">Знання та задієння алгебри логіки</option>
    <option value="Дискретні структури, алгоритми на графах">Дискретні структури, алгоритми на графах</option>
    <option value="Реалізація шаблонів проектування ПЗ">Реалізація шаблонів проектування ПЗ</option>
    <option value="Моделювання аспектів системи для створюваного ПЗ">Моделювання аспектів системи для створюваного ПЗ</option>
    <option value="Мінімізування складності ПЗ">Мінімізування складності ПЗ</option>
    <option value="Створенння тестів для забезпечення якості ПЗ">Створенння тестів для забезпечення якості ПЗ</option>
    <option value="Знання основ управління проектами">Знання основ управління проектами</option>
    <option value="Застосування уінструментів управління проектами">Застосування уінструментів управління проектами</option>
    <option value="Навички організації та керування колективом">Навички організації та керування колективом</option>
    <option value="Знання офісних програмних систем">Знання офісних програмних систем</option>
    <option value="Знання і використання можливостей ОС">Знання і використання можливостей ОС</option>
    <option value="Об'єктно-орієнтованого мислення">Об'єктно-орієнтованого мислення</option>
    <option value="Базові знання інформатики і операційних систем">Базові знання інформатики і операційних систем</option>
    <option value="Застосування іноземної мови ">Застосування іноземної мови </option>
    <option value="Конструювання програмного забезпечення ">Конструювання програмного забезпечення </option>
    <option value="Побудова та дослідження динамічних систем та їх ст">Побудова та дослідження динамічних систем та їх ст</option>
    <option value="Конструювання програмного забезпечення ">Конструювання програмного забезпечення </option>
    <option value="Побудова та дослідження динамічних систем, їх стан">Побудова та дослідження динамічних систем, їх стан</option>
    <option value="Застосовувати професійно профільованих знань">Застосовувати професійно профільованих знань</option>
    <option value="Реалізація чисельних методів програмними засобами">Реалізація чисельних методів програмними засобами</option>
    <option value="Володіння системами прийняття рішень">Володіння системами прийняття рішень</option>
    <option value="Проктування і розробка систем підтримки прийняття">Проктування і розробка систем підтримки прийняття</option>
    <option value="Володіння системами прийняття рішень">Володіння системами прийняття рішень</option>
    <option value="Розробка систем підтримки прийняття рішень">Розробка систем підтримки прийняття рішень</option>
    <option value="Основи методів та технологій системного аналізу">Основи методів та технологій системного аналізу</option>
    <option value="Розуміння етичного кодексу інженера з ПЗ">Розуміння етичного кодексу інженера з ПЗ</option>
    <option value="Супроводження та розробка застосунків для тестуван">Супроводження та розробка застосунків для тестуван</option>
    <option value="Розуміння етичного кодексу інженера з ПЗ">Розуміння етичного кодексу інженера з ПЗ</option>
    <option value="Супроводження та розробка тест-кейсів">Супроводження та розробка тест-кейсів</option></select></div></div>
  <div class="element-select"><label class="title"><span class="required"><hr><h1><h1>Чи займались Ви самостійним навчанням поза університетом?</h1></span></label><div class="large"><span><select name="select2" required="required">

    <option value="Так">Так</option>
    <option value="Ні">Ні</option></select><i></i></span></div></div>
  <div class="element-select"><label class="title"><span class="required"><hr><h1>Вкажіть тип навчання</h1></span></label><div class="large"><span><select name="select3" required="required">

    <option value="Групові Онлайн Курси З наставником">Групові Онлайн Курси З наставником</option>
    <option value="Онлайн курси базованні на веб-ресурсах ">Онлайн курси базованні на веб-ресурсах </option>
    <option value="Локальні курси з відвідуванням заннять">Локальні курси з відвідуванням заннять</option></select><i></i></span></div></div>
  <div class="element-input"><label class="title"><span class="required"><h1>Введіть назву пройденних курсів</h1></span></label><input class="large" type="text" name="input1" required="required" placeholder="Найменування курсів"/></div>
  <div class="element-number" title="Тривалість навчання на даних курсах"><label class="title"><span class="required">Вкажіть тривалість навчання на  курсах</span></label><input class="large" type="text" min="0" max="100" name="number1" required="required" placeholder="к-сть місяців" value=""/></div>
  <div class="element-multiple"><label class="title"><span class="required"><h1>Які навички або зннання ви отримали в результаті проходження курсів?</h1></span></label><div class="large"><select data-no-selected="Nothing selected" name="multiple1[]" multiple="multiple" required="required">

    <option value="Створення та стильове оформлення Web-документів">Створення та стильове оформлення Web-документів</option>
    <option value="Технології створення динамічних веб-сайтів">Технології створення динамічних веб-сайтів</option>
    <option value="Створення статичних та динамічних Web-сторінок">Створення статичних та динамічних Web-сторінок</option>
    <option value="Розробка Web-додатків на мові PHP">Розробка Web-додатків на мові PHP</option>
    <option value="MySQL у Web-програмуванні">MySQL у Web-програмуванні</option>
    <option value="Робота з серверами та клієнтськими сценаріями">Робота з серверами та клієнтськими сценаріями</option>
    <option value="Розробка графічного оформлення сайтів">Розробка графічного оформлення сайтів</option>
    <option value="Аналіз та розробка алгоритмів.">Аналіз та розробка алгоритмів.</option>
    <option value="Спеціальні алгоритми">Спеціальні алгоритми</option>
    <option value="Робота з структурами даних">Робота з структурами даних</option>
    <option value="Проектування компонентів архітектури ПЗ">Проектування компонентів архітектури ПЗ</option>
    <option value="Основи методів та технологій аналізу бізнес-процес">Основи методів та технологій аналізу бізнес-процес</option>
    <option value="Моделювання програмного забезпечення">Моделювання програмного забезпечення</option>
    <option value="Моделювання бізнес процесів систем">Моделювання бізнес процесів систем</option>
    <option value="Уявлення про основи інженерії вимог до ПЗ">Уявлення про основи інженерії вимог до ПЗ</option>
    <option value="Розробка специфікації вимог користувачів до ПЗ">Розробка специфікації вимог користувачів до ПЗ</option>
    <option value="Аналіз вимог до ПЗ, верифікація та атестація">Аналіз вимог до ПЗ, верифікація та атестація</option>
    <option value="Уявлення про архітектуру комп'ютерів">Уявлення про архітектуру комп'ютерів</option>
    <option value="Розробка ПЗ в контексті архітектури комп'ютерів">Розробка ПЗ в контексті архітектури комп'ютерів</option>
    <option value="Уявлення про структуру та архітектуру ПЗ">Уявлення про структуру та архітектуру ПЗ</option>
    <option value="Сполучення та забезпечення роботи пристроїв">Сполучення та забезпечення роботи пристроїв</option>
    <option value="Забезпечення захищеності прогарм і даних">Забезпечення захищеності прогарм і даних</option>
    <option value="Використання мережевого ПЗ">Використання мережевого ПЗ</option>
    <option value="Знання основ формування зображень">Знання основ формування зображень</option>
    <option value="Розробка моделей растрової графіки">Розробка моделей растрової графіки</option>
    <option value="Розробка моделей фрактальної графіки">Розробка моделей фрактальної графіки</option>
    <option value="Розробка моделей векторної графіки">Розробка моделей векторної графіки</option>
    <option value="Створення документації до програмного продукту">Створення документації до програмного продукту</option>
    <option value="Навчики переконання та впливу на людей">Навчики переконання та впливу на людей</option>
    <option value="Письмова й усна комунікація різними мовами">Письмова й усна комунікація різними мовами</option>
    <option value="Проведення ділових перемов з бізнес-партнерами">Проведення ділових перемов з бізнес-партнерами</option>
    <option value="Управління якістю проекту і ризиками ">Управління якістю проекту і ризиками </option>
    <option value="Аналіз та оцінка бізнес середовища">Аналіз та оцінка бізнес середовища</option>
    <option value="Задіяння методики розрахунку економічних показникі">Задіяння методики розрахунку економічних показникі</option>
    <option value="Планування діяльності підприємства">Планування діяльності підприємства</option>
    <option value="Застосування знань математичної статистики">Застосування знань математичної статистики</option>
    <option value="Задієння методів та засобів інженерії ПЗ">Задієння методів та засобів інженерії ПЗ</option>
    <option value="Знання і використання можливостей ОС">Знання і використання можливостей ОС</option>
    <option value="Реалізація баз даних">Реалізація баз даних</option>
    <option value="Знання інтернет-технологій">Знання інтернет-технологій</option>
    <option value="Знання  HTML та CSS">Знання  HTML та CSS</option>
    <option value="Знання та задієння алгебри логіки">Знання та задієння алгебри логіки</option>
    <option value="Дискретні структури, алгоритми на графах">Дискретні структури, алгоритми на графах</option>
    <option value="Реалізація шаблонів проектування ПЗ">Реалізація шаблонів проектування ПЗ</option>
    <option value="Моделювання аспектів системи для створюваного ПЗ">Моделювання аспектів системи для створюваного ПЗ</option>
    <option value="Мінімізування складності ПЗ">Мінімізування складності ПЗ</option>
    <option value="Створенння тестів для забезпечення якості ПЗ">Створенння тестів для забезпечення якості ПЗ</option>
    <option value="Знання основ управління проектами">Знання основ управління проектами</option>
    <option value="Застосування уінструментів управління проектами">Застосування уінструментів управління проектами</option>
    <option value="Навички організації та керування колективом">Навички організації та керування колективом</option>
    <option value="Знання офісних програмних систем">Знання офісних програмних систем</option>
    <option value="Знання і використання можливостей ОС">Знання і використання можливостей ОС</option>
    <option value="Об'єктно-орієнтованого мислення">Об'єктно-орієнтованого мислення</option>
    <option value="Базові знання інформатики і операційних систем">Базові знання інформатики і операційних систем</option>
    <option value="Застосування іноземної мови ">Застосування іноземної мови </option>
    <option value="Конструювання програмного забезпечення ">Конструювання програмного забезпечення </option>
    <option value="Побудова та дослідження динамічних систем та їх ст">Побудова та дослідження динамічних систем та їх ст</option>
    <option value="Конструювання програмного забезпечення ">Конструювання програмного забезпечення </option>
    <option value="Побудова та дослідження динамічних систем, їх стан">Побудова та дослідження динамічних систем, їх стан</option>
    <option value="Застосовувати професійно профільованих знань">Застосовувати професійно профільованих знань</option>
    <option value="Реалізація чисельних методів програмними засобами">Реалізація чисельних методів програмними засобами</option>
    <option value="Володіння системами прийняття рішень">Володіння системами прийняття рішень</option>
    <option value="Проктування і розробка систем підтримки прийняття">Проктування і розробка систем підтримки прийняття</option>
    <option value="Володіння системами прийняття рішень">Володіння системами прийняття рішень</option>
    <option value="Розробка систем підтримки прийняття рішень">Розробка систем підтримки прийняття рішень</option>
    <option value="Основи методів та технологій системного аналізу">Основи методів та технологій системного аналізу</option>
    <option value="Розуміння етичного кодексу інженера з ПЗ">Розуміння етичного кодексу інженера з ПЗ</option>
    <option value="Супроводження та розробка застосунків для тестуван">Супроводження та розробка застосунків для тестуван</option>
    <option value="Розуміння етичного кодексу інженера з ПЗ">Розуміння етичного кодексу інженера з ПЗ</option>
    <option value="Супроводження та розробка тест-кейсів">Супроводження та розробка тест-кейсів</option></select></div></div>
<div class="submit"><input type="submit"  value="Наступний Крок (1/3)"/></div></form><p class="frmd"><script type="text/javascript" src="formoid_files/formoid1/formoid-biz-red.js"></script>
      </div>  
    </div>  
  </div>  

  <div class="copyright">
    <p> © 2017 Diplom Work by Vasyl Fedko</p>
  </div>
<script src="js/pushy.min.js"></script>
</body>
</html>
<?php ob_end_flush(); ?>