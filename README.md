# BDD - Funtional tests to sample with Behat #

Behat is an open source Behavior-Driven Development framework for PHP. It is a tool to support you in delivering software that matters through continous communication, deliberate discovery and test-automation.

# Testing #

Tests are built with PHPUnit+Behat+Mink+Selenium.

[http://mink.behat.org/en/latest/]

Make sure you install with dev requirements.

composer install

# Configure Selenium (complex) or used goutte (easy)

Uncomment in the config file the line with the word goutter for use goutte.
/behat-test/behat.yml

Selenium is complex configuration but this engine are testing with javascript. Gutter does not have to configuration engine but this engine does not test javascript.

# Execute test:

php vendor/bin/behat


# more info:

Selenium: http://elementalselenium.com/tips/52-grid
