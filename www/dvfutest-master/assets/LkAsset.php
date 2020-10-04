<?php
/**
 * Created by PhpStorm.
 * User: pipeda
 * Date: 03.10.2020
 * Time: 6:09
 */
namespace app\assets;

class LkAsset extends \yii\web\AssetBundle
{
    public $sourcePath = '@app/media/lk';
    public $css = [
        'css/css.css',
        'css/line-awesome.css',
        'css/line-awesome-font-awesome.css',
        'css/font-awesome.min.css',

    ];
    public $js = [

    ];
    public $depends = [
        'yii\web\JqueryAsset',
        'yii\bootstrap4\BootstrapAsset',
        'yii\bootstrap4\BootstrapPluginAsset',
    ];
}