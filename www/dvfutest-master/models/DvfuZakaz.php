<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dvfu_zakaz".
 *
 * @property int $zakaz_id
 * @property int $user_id
 * @property int $mag_id
 * @property string $zakaz_chek
 * @property string $zakaz_cena
 * @property int $zakaz_opis
 */
class DvfuZakaz extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'dvfu_zakaz';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'mag_id', 'zakaz_chek', 'zakaz_cena', 'zakaz_opis'], 'required'],
            [['user_id', 'mag_id', 'zakaz_opis'], 'integer'],
            [['zakaz_chek', 'zakaz_cena'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'zakaz_id' => 'Zakaz ID',
            'user_id' => 'User ID',
            'mag_id' => 'Mag ID',
            'zakaz_chek' => 'Номер чека',
            'zakaz_cena' => 'Стоимость',
            'zakaz_opis' => 'Описание',
        ];
    }
}
