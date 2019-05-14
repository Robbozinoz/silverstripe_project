<?php

namespace SilverStripe\Onering_jr;

use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Page;

class ArticlePage extends Page
{
  private static $can_be_root = false;

  //Attaching keys and valiues to the Silverstripe database variables
  private static $db = [
    'Date' => 'Date',
    'Teaser' => 'Text',
    'Author' => 'Varchar'
  ];

  //Add columns to the database as Foreign keys and ID so they are constant
  private static $has_one = [
    'Photo' => Image::class,
    'Brochure' => File::class
  ];

  //Load images without login
  private static $owns = [
    'Photo',
    'Brochure',
  ];

  //Lesson 6 exposing the update facility for the CMS to the article page class to allow for new field editing but including page class fields
  public function getCMSFields()
  {
    $fields = parent::getCMSFields();
    //Take the $fields array and apply to the database and CMS dashboard
    //PLace fields before content in CMS editor

    $fields->addFieldToTab(
      'Root.Main',
      DateField::create('Date', 'Date of article'),
      'Content'
    );

    $fields->addFieldToTab(
      'Root.Main',
      TextareaField::create('Teaser')
        ->setDescription('This is the summary that appears on the article list page.'),
      'Content'
    );

    $fields->addFieldToTab(
      'Root.Main',
      TextField::create('Author', 'Author of article'),
      'Content'
    );

    $fields->addFieldToTab(
      'Root.Attachments',
      $photo = UploadField::create('Photo')
    );

    $fields->addFieldToTab(
      'Root.Attachments',
      $brochure = UploadField::create(
        'Brochure',
        'Travel brochure, optional (PDF only)'
      )
    );

    //Set and create new relative folder for photo assets
    $photo->setFolderName('travel-photos');

    //Validate that only PDF's cabn be uploaded
    $brochure
      ->setFolderName('travel-brochures')
      ->getValidator()->setAllowedExtensions(['pdf']);

    return $fields;
  }
}
