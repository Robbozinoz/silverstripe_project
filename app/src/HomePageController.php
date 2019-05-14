<?php
//Tutorial 4 setup of class for new page template
//namespace SilverStripe\Lessons;

namespace SilverStripe\Onering_jr;


use PageController;

class HomePageController extends PageController
{
    public function LatestArticles($count = 3)
    {
        return ArticlePage::get()
            ->sort('Created', 'DESC')
            ->limit($count);
    }
}
