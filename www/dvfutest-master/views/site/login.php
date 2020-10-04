<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use app\assets\loginAsset;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
LoginAsset::register($this);
?>
<div id="allrecords" class="t-records" data-tilda-project-id="975533">
    <div class="tlk__reg-form-container tlk__form-container" data-gradient="true" data-gradient-start-color="#000000" data-gradient-end-color="#000000" data-gradient-start-opacity="" data-gradient-end-opacity="">
        <div class="tlk__reg-form tlk__reg-form-registration">
            <div style="width: 100%; text-align: center; margin-bottom: 20px;">
                <a href="/">
                    <img src="https://static.tildacdn.com/tild6266-3962-4435-a262-366533373663/_.png" height="80px" align="center">
                </a>
            </div>
            <?php $form = ActiveForm::begin([
                'id' => 'login-form',
                'layout' => 'horizontal',
                'fieldConfig' => [
                    'template' => "{label}\n<div class=\"col-lg-8\">{input}</div>\n<div class=\"col-lg-3\">{error}</div>",
                    'labelOptions' => ['class' => 'col-lg-1 control-label'],
                ],
            ]); ?>

            <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

            <?= $form->field($model, 'password')->passwordInput() ?>

            <?= $form->field($model, 'rememberMe')->checkbox([
                'template' => "<div class=\"col-lg-offset-1 col-lg-3\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
            ]) ?>

            <div class="form-group">
                <div class="col-lg-offset-1 col-lg-11">
                    <?= Html::submitButton('Войти', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                </div>
            </div>

            <?php ActiveForm::end(); ?>
            <div class="tlk__reg-form-text-btn-wrap">
                <a href="/members/signup/group/nhvdcjvmu0zlehz-licnyj-kabinet" id="action_signup" class="tlk__reg-form-text-btn tlk__reg-form-text-btn-signup">Зарегистрироваться</a>
                <a href="/members/recovery-password" class="tlk__reg-form-text-btn">Восстановить пароль</a>
            </div>
        </div>
        <style> .tlk__form-container { background-repeat: no-repeat; background-position: center; background-size: cover; display: flex; justify-content: center; align-items: center; min-height: 100vh; padding: 20px 15px; box-sizing: border-box; }</style>
    </div>
    <div class="tlk__bg-filter" style="background-image: linear-gradient(rgb(0, 0, 0), rgb(0, 0, 0));"></div>
</div>