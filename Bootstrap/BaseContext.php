<?php

use Behat\MinkExtension\Context\MinkContext;
/**
 * Defines application features from the specific context.
 */
class BaseContext extends MinkContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    /**
     * @Then /^I wait for the ajax response$/
     */
    public function iWaitForTheAjaxResponse()
    {
        $this->getSession()->wait(5000, '(0 === jQuery.active)');
    }
}
