<?php

namespace SilverStripe\Onering_jr;

use Page;

class ArticleHolder extends Page
{
    private static $allowed_children = [
        ArticlePage::class
      ];
}