<?php
/**
 * Created by PhpStorm.
 * User: pipeda
 * Date: 03.10.2020
 * Time: 6:38
 */
namespace app\assets;

class GlAsset extends \yii\web\AssetBundle
{
    public $sourcePath = '@app/media/gl';
    public $css = [
        'css/tilda-grid-3.0.min.css',
    ];
    public $js = [

    ];
    public $depends = [
        'yii\web\JqueryAsset',
        'yii\bootstrap4\BootstrapAsset',
        'yii\bootstrap4\BootstrapPluginAsset',
    ];
}