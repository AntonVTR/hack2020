<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{

    public $sourcePath = '@app/media/gl2';
    public $css = [
        //'css/tilda-animation-1.0.min.css',
        //'css/tilda-blocks-2.12.css',
         //'css/tilda-grid-3.0.min.css',
         //'css/tilda-menusub-1.0.min.css',
        'css/tilda-animation-1.0.min.css',
        'css/tilda-blocks-2.12.css',
        //'css/tilda-grid-3.0.min.css',
        'css/tilda-menusub-1.0.min.css',
        'css/tilda-slds-1.4.min.css',
        'css/tilda-zoom-2.0.min.css',
    ];
    public $js = [
        //'js/lazyload-1.3.min.js',
        //'js/tilda-animation-1.0.min.js',
        //'js/tilda-blocks-2.7.js',
       // 'js/tilda-menusub-1.0.min.js',
        //'js/tilda-scripts-2.8.min.js',
        //'js/tildasimplestat-0.1.min.js',
        ['js/jquery-1.10.2.min.js', 'position' => \yii\web\View::POS_HEAD],
        'js/hammer.min.js',
        'js/lazyload-1.3.min.js',
        'js/tilda-animation-1.0.min.js',
        'js/tilda-animation-sbs-1.0.min.js',
        ['js/tilda-menusub-1.0.min.js', 'position' => \yii\web\View::POS_HEAD],
        'js/tilda-scripts-2.8.min.js',
        'js/tilda-slds-1.4.min.js',
        'js/tilda-zoom-2.0.min.js',
        'js/tildastat-0.2.min.js',


    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap4\BootstrapAsset',
        'yii\bootstrap4\BootstrapPluginAsset',
    ];
}
