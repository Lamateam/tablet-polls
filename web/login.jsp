<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
    <script type="text/javascript" src="/vendor/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="/js/login.js"></script>

    <link href='/css/main.css' rel='stylesheet' type='text/css'>
</head>
<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <div>
                    <h1>Вход</h1>
                    <div>
                        <input type="text" class="form-control" name="login" placeholder="Логин" required="">
                    </div>
                    <div>
                        <input type="password" class="form-control" name="password" placeholder="Пароль" required="">
                    </div>
                    <div>
                        <div class="btn btn-default submit enter_button">Войти</div>
                        <a class="reset_pass" href="#">Забыли пароль?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Еще не зарегистрированы?
                            <a href="#signup" class="to_register"> Создать аккаунт </a>
                        </p>

                        <div class="clearfix"></div>
                        <br>

                        <div>
                            <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                            <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <div>
                    <h1>Регистрация</h1>
                    <div>
                        <input type="text" class="form-control" placeholder="Логин" name="reglogin" required="">
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Пароль" name="regpassword" required="">
                    </div>
                    <div>
                        <input type="password" class="form-control" placeholder="Подтвердите пароль" name="confirmregpassword" required="">
                    </div>
                    <div>
                        <div class="btn btn-default submit register_button">Зарегистрировать</div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Уже есть аккаунт?
                            <a href="#signin" class="to_register"> Войти </a>
                        </p>

                        <div class="clearfix"></div>
                        <br>

                        <div>
                            <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                            <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>

</body>
</html>