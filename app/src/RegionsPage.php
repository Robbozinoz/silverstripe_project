<?php

namespace SilverStripe\Onering_jr;


use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Page;

class RegionsPage extends Page
{
    //Relational database connection with Regions class
    private static $has_many = [
        'Regions' => Region::class,
    ];

    //Ensures that version changes cascade from regions to regionspage
    private static $owns = [
        'Regions'
    ];

    //Using Grid fields to control data
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Regions', GridField::create(
            'Regions',
            'Regions on this page',
            $this->Regions(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }
}
