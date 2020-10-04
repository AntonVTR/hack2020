<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dvfu_mag".
 *
 * @property int $mag_id
 * @property string $mag_name
 * @property string $mag_adres
 * @property string $mag_opis
 * @property string $mag_phone
 * @property string $mag_site
 * @property string|null $mag_image
 */
class DvfuMag extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dvfu_mag';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['mag_name', 'mag_adres', 'mag_opis', 'mag_phone', 'mag_site'], 'required'],
            [['mag_opis'], 'string'],
            [['mag_name', 'mag_adres', 'mag_phone', 'mag_site', 'mag_image'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'mag_id' => 'Mag ID',
            'mag_name' => 'Mag Name',
            'mag_adres' => 'Mag Adres',
            'mag_opis' => 'Mag Opis',
            'mag_phone' => 'Mag Phone',
            'mag_site' => 'Mag Site',
            'mag_image' => 'Mag Image',
        ];
    }
    public static function getAll()
    {
        $data = self::find()->all();
        return $data;
    }
}
