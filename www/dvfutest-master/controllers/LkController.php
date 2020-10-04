<?php
/**
 * Created by PhpStorm.
 * User: pipeda
 * Date: 03.10.2020
 * Time: 0:01
 */

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\DvfuMag;
use app\models\DvfuZakaz;

class LkController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function beforeAction($action)
    {
        $this->layout = '@app/views/layouts/imain'; //layout name
        if (Yii::$app->user->isGuest) {
            return $this->redirect(['/site/login']);
        }
        return parent::beforeAction($action);

    }
    public function actionIndex()
    {

        $array = DvfuMag::getAll();
        $model= new DvfuZakaz();
        return $this->render('index',['mag' => $array,'model'=>$model]);

    }


}