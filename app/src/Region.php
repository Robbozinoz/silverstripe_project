<?php

namespace SilverStripe\Onering_jr;

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Versioned\Versioned;

class Region extends DataObject
{

    private static $db = [
        'Title' => 'Varchar',
        'Description' => 'Text',
    ];

    //Ensuring one regionspage id is passsed to the regions page-relational databases
    private static $has_one = [
        'Photo' => Image::class,
        'RegionsPage' => RegionsPage::class,
    ];

    //Add summary variable to allow for Photos to be called to Gridfield constructor
    private static $summary_fields = [
        'GridThumbnail' => '',
        'Title' => 'Title',
        'Description' => 'Description',
        'Photo.Filename' => 'Photo file name'
    ];


    private static $owns = [
        'Photo',
    ];

    //Version control for new region data
    private static $extensions = [
        Versioned::class,
    ];

    //Allows for all save, archive and publish functionaility to be included
    private static $versioned_gridfield_extensions = true;

    public function getGridThumbnail()
    {
        if ($this->Photo()->exists()) {
            return $this->Photo()->ScaleWidth(100);
        }

        return "(no image)";
    }


    public function getCMSFields()
    {
        $fields = FieldList::create(
            TextField::create('Title'),
            TextareaField::create('Description'),
            $uploader = UploadField::create('Photo')
        );

        $uploader->setFolderName('region-photos');
        $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg']);

        return $fields;
    }
}
