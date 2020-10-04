<?php
/**
 * Created by PhpStorm.
 * User: pipeda
 * Date: 03.10.2020
 * Time: 4:47
 */


use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap4\Nav;
use yii\bootstrap4\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <div id="nav235452526marker"></div>
    <div class="t446__mobile"> <div class="t446__mobile_container"> <div class="t446__mobile_text t-name t-name_md" field="text">&nbsp;</div> <div class="t446__mobile_burger"> <span></span> <span></span> <span></span> <span></span> </div> </div> </div>
    <div id="nav235452526" class="t446 t446__hidden t446__positionfixed " style="background-color: rgb(0, 0, 0); height: 100px; box-shadow: rgba(0, 0, 0, 0) 0px 1px 3px;" data-bgcolor-hex="#000000" data-bgcolor-rgba="rgba(0,0,0,1)" data-navmarker="nav235452526marker" data-appearoffset="" data-bgopacity-two="50" data-menushadow="0" data-bgopacity="1" data-bgcolor-rgba-afterscroll="rgba(0,0,0,0.50)" data-menu-items-align="left" data-menu="yes">
        <div class="t446__maincontainer " style="height:100px;">
            <div class="t446__logowrapper">
                <div class="t446__logowrapper2">
                    <div style="display: block;">
                        <img src="https://static.tildacdn.com/tild6630-3266-4765-b130-346635323737/5.png" class="t446__imglogo t446__imglogomobile" imgfield="img" style="max-width: 150px; width: 150px;" alt="EDO">
                    </div>
                </div>
            </div>
            <div class="t446__leftwrapper" style=" padding-right:125px; text-align: left;">
                <div class="t446__leftmenuwrapper">
                    <ul class="t446__list">
                        <li class="t446__list_item">
                            <a class="t-menu__link-item" href="/site/index#rec235452532" data-menu-submenu-hook="" style="color:#ffffff;font-weight:600;" data-menu-item-number="1">EDO - уже еду</a>
                        </li>
                        <li class="t446__list_item">
                            <a class="t-menu__link-item" href="/lk/index" data-menu-submenu-hook="" style="color:#ffffff;font-weight:600;" data-menu-item-number="2">Личный кабинет</a>
                        </li>
                        <li class="t446__list_item">
                            <a class="t-menu__link-item" href="/site/index" data-menu-submenu-hook="" style="color:#ffffff;font-weight:600;" data-menu-item-number="3">Магазины</a>
                        </li>
                        <li class="t446__list_item">
                            <a class="t-menu__link-item" href="/site/play" data-menu-submenu-hook="" style="color:#ffffff;font-weight:600;" data-menu-item-number="4">Играть</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="t446__rightwrapper" style=" padding-left:125px; text-align: right;">
                <div class="t446__rightmenuwrapper">
                    <ul class="t446__list"></ul>
                </div>
                <div class="t446__additionalwrapper">
                    <div class="t-sociallinks">
                        <div class="t-sociallinks__wrapper">
                            <div class="t-sociallinks__item">
                                <a href="https://www.google.com" target="_blank">
                                    <svg class="t-sociallinks__svg" version="1.1" id="Layer_1"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve">
										<desc>Facebook</desc>
                                        <path style="fill:#ffffff;" d="M47.761,24c0,13.121-10.638,23.76-23.758,23.76C10.877,47.76,0.239,37.121,0.239,24c0-13.124,10.638-23.76,23.764-23.76C37.123,0.24,47.761,10.876,47.761,24 M20.033,38.85H26.2V24.01h4.163l0.539-5.242H26.2v-3.083c0-1.156,0.769-1.427,1.308-1.427h3.318V9.168L26.258,9.15c-5.072,0-6.225,3.796-6.225,6.224v3.394H17.1v5.242h2.933V38.85z"></path>
									</svg>
                                </a>
                            </div>
                            <div class="t-sociallinks__item">
                                <a href="https://www.google.com" target="_blank">
                                    <svg class="t-sociallinks__svg" version="1.1" id="Layer_1"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 48 48" enable-background="new 0 0 48 48" xml:space="preserve">
										<desc>VK</desc>
                                        <path style="fill:#ffffff;" d="M47.761,24c0,13.121-10.639,23.76-23.76,23.76C10.878,47.76,0.239,37.121,0.239,24c0-13.123,10.639-23.76,23.762-23.76C37.122,0.24,47.761,10.877,47.761,24 M35.259,28.999c-2.621-2.433-2.271-2.041,0.89-6.25c1.923-2.562,2.696-4.126,2.45-4.796c-0.227-0.639-1.64-0.469-1.64-0.469l-4.71,0.029c0,0-0.351-0.048-0.609,0.106c-0.249,0.151-0.414,0.505-0.414,0.505s-0.742,1.982-1.734,3.669c-2.094,3.559-2.935,3.747-3.277,3.524c-0.796-0.516-0.597-2.068-0.597-3.171c0-3.449,0.522-4.887-1.02-5.259c-0.511-0.124-0.887-0.205-2.195-0.219c-1.678-0.016-3.101,0.007-3.904,0.398c-0.536,0.263-0.949,0.847-0.697,0.88c0.31,0.041,1.016,0.192,1.388,0.699c0.484,0.656,0.464,2.131,0.464,2.131s0.282,4.056-0.646,4.561c-0.632,0.347-1.503-0.36-3.37-3.588c-0.958-1.652-1.68-3.481-1.68-3.481s-0.14-0.344-0.392-0.527c-0.299-0.222-0.722-0.298-0.722-0.298l-4.469,0.018c0,0-0.674-0.003-0.919,0.289c-0.219,0.259-0.018,0.752-0.018,0.752s3.499,8.104,7.573,12.23c3.638,3.784,7.764,3.36,7.764,3.36h1.867c0,0,0.566,0.113,0.854-0.189c0.265-0.288,0.256-0.646,0.256-0.646s-0.034-2.512,1.129-2.883c1.15-0.36,2.624,2.429,4.188,3.497c1.182,0.812,2.079,0.633,2.079,0.633l4.181-0.056c0,0,2.186-0.136,1.149-1.858C38.281,32.451,37.763,31.321,35.259,28.999"></path>
									</svg>
                                </a>
                            </div>
                            <div class="t-sociallinks__item">
                                <a href="https://www.google.com" target="_blank">
                                    <svg class="t-sociallinks__svg" version="1.1" id="Layer_1"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="30px" height="30px" viewBox="0 0 30 30" xml:space="preserve">
										<desc>Instagram</desc>
                                        <path style="fill:#ffffff;" d="M15,11.014 C12.801,11.014 11.015,12.797 11.015,15 C11.015,17.202 12.802,18.987 15,18.987 C17.199,18.987 18.987,17.202 18.987,15 C18.987,12.797 17.199,11.014 15,11.014 L15,11.014 Z M15,17.606 C13.556,17.606 12.393,16.439 12.393,15 C12.393,13.561 13.556,12.394 15,12.394 C16.429,12.394 17.607,13.561 17.607,15 C17.607,16.439 16.444,17.606 15,17.606 L15,17.606 Z"></path>
                                        <path style="fill:#ffffff;" d="M19.385,9.556 C18.872,9.556 18.465,9.964 18.465,10.477 C18.465,10.989 18.872,11.396 19.385,11.396 C19.898,11.396 20.306,10.989 20.306,10.477 C20.306,9.964 19.897,9.556 19.385,9.556 L19.385,9.556 Z"></path>
                                        <path style="fill:#ffffff;" d="M15.002,0.15 C6.798,0.15 0.149,6.797 0.149,15 C0.149,23.201 6.798,29.85 15.002,29.85 C23.201,29.85 29.852,23.202 29.852,15 C29.852,6.797 23.201,0.15 15.002,0.15 L15.002,0.15 Z M22.666,18.265 C22.666,20.688 20.687,22.666 18.25,22.666 L11.75,22.666 C9.312,22.666 7.333,20.687 7.333,18.28 L7.333,11.734 C7.333,9.312 9.311,7.334 11.75,7.334 L18.25,7.334 C20.688,7.334 22.666,9.312 22.666,11.734 L22.666,18.265 L22.666,18.265 Z"></path>
									</svg>
                                </a>
                            </div>
                            <div class="t-sociallinks__item">
                                <a href="http://t.me/dvfu_shopping_bot?start=welcome" target="_blank">
                                    <svg class="t-sociallinks__svg" version="1.1" id="Layer_1"
                                         xmlns="http://www.w3.org/2000/svg"
                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="30px" height="30px" viewBox="0 0 60 60" xml:space="preserve">
										<desc>Telegram</desc>
                                        <path style="fill:#ffffff;" d="M30 0C13.4 0 0 13.4 0 30s13.4 30 30 30 30-13.4 30-30S46.6 0 30 0zm16.9 13.9l-6.7 31.5c-.1.6-.8.9-1.4.6l-10.3-6.9-5.5 5.2c-.5.4-1.2.2-1.4-.4L18 32.7l-9.5-3.9c-.7-.3-.7-1.5 0-1.8l37.1-14.1c.7-.2 1.4.3 1.3 1z"></path>
                                        <path style="fill:#ffffff;" d="M22.7 40.6l.6-5.8 16.8-16.3-20.2 13.3"></path>
									</svg>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


        <?= Alert::widget() ?>
        <?= $content ?>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; ДВФУ <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
