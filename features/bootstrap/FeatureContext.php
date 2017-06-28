<?php

namespace Features\Context;

use Behat\Behat\Context\Context;
use Behat\MinkExtension\Context\RawMinkContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawMinkContext  implements Context
{

    /**
     * @Given /^I wait (\d+) seconds?$/
     *
     * @param int $nbr
     */
    public function iWaitSeconds($nbr)
    {
        $this->getSession()->wait($nbr * 1000);
    }
}
