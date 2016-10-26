<?php

use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\MinkExtension\Context\MinkContext;

/**
* Defines application features from the specific context.
*/
class FeatureContext extends MinkContext
{
  public $output = NULL,$nodes=NULL;
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
  * @Given I click the :arg1 element
  */
  public function iClickTheElement($selector)
  {
    $page = $this->getSession()->getPage();
    $element = $page->find('css', $selector);
    if (empty($element)) {
      throw new Exception("No html element found for the selector ('$selector')");
    }
    $element->click();
  }

  /**
  * @When /^I click on the li text "([^"]*)"$/
  */
  public function iClickOnTheLiText($text)
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('xpath', '//li[text()="'.$text.'"]');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find text : "%s"', $text));
    }
    $element->click();
  }

  /**
  * @When /^I click an element with ID "([^"]*)"$/
  *
  * @param $id
  * @throws \Exception
  */
  public function iClickAnElementWithId($id)
  {
    $element = $this->getSession()->getPage()->findById($id);
    if (null === $element) {
      throw new \Exception(sprintf('Could not evaluate element with ID: "%s"', $id));
    }
    $element->click();
  }


  /**
  * @When /^I switch window$/
  */
  public function WindowSwitch()
  {
    $windowNames = $this->getSession()->getWindowNames();
    if(count($windowNames) > 1) {
      $this->getSession()->switchToWindow($windowNames[1]);
    }
    else {
      throw new \Exception(sprintf('There is no new window for social icon'));
    }
  }

  /**
  * @When /^I click on the anchor text "([^"]*)"$/
  */
  public function iClickOnTheAnchorText($text)
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('xpath', '//a[text()="'.$text.'"]');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find anchor text : "%s"', $text));
    }
    $element->click();
  }

  /**
  * @Given /^I wait ([0-9^"]*) seconds$/
  */
  public function iWaitSeconds($wait) {
    for ($i = 0; $i < $wait; $i++) {
      sleep(1);
    }
  }

  /**
  * @When /^I click on the span bold text "([^"]*)"$/
  */
  public function iClickOnTheSpanBoldText($text)
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('xpath', '//span/b[text()="'.$text.'"]');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find span text : "%s"', $text));
    }
    $element->click();
  }

  /**
  * @When /^I click on the span of li with text "([^"]*)"$/
  */
  public function iClickOnTheSpanOfLi($text)
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('xpath', '/body/div[3]/div[2]/div[2]/div/div[2]/ul/li/a/span[text()="'.$text.'"]');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find span text'));
    }
    $element->click();
  }

  /**
  * @When /^I click on the span text "([^"]*)" with current date$/
  */
  public function iClickOnTheSpanTextWithCurrentDate($text)
  {
    $today = date("F j, Y");
    $session = $this->getSession();
    $element = $session->getPage()->find('xpath', '//span/b[text()="'.$text." ".$today.'"]');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find span text with current date: "%s"', $text));
    }
    $element->click();
  }

  /**
  * @When /^I click on the refresh of gmail$/
  */
  public function iClickOnTheRefresh()
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('css', '.nu > div:nth-child(1)');
    if (null === $element) {
      throw new \InvalidArgumentException(sprintf('Cannot find refresh'));
    }
    $element->click();
  }
  /**
  * @When /^(?:|I )select the voucher$/
  */
  public function selectVoucher() {
    global $output;
    $page = $this->getSession()->getPage();
    $selectElement = $page->find('css', '.aXjCH > div:nth-child(2) > table > tbody > tr:nth-child(5) > td > table > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(3) > td:nth-child(1) > span');
    $text = $selectElement->getText();
    $output = $text;
  }


  /**
  * @When /^I filled "(?P<field>(?:[^"]|\\")*)" with output element$/
  */
  public function fillWithOutput($selector)
  {
    global $output;
    $element = $this->getSession()->getPage()->find('css', $selector);
    if($element === null){
      throw new Exception("Element $selector not found");
    }else{
      $element->setValue($output);
    }
  }

  /**
  * @Then /^I should see total "([^"]*)" elements$/
  */
  public function iShouldSeeTotalElements($element)
  {
    $container = $this->getSession()->getPage();
    $nodes = $container->findAll('css', $element);
  }

  /**
  * @Then /^I should see more "([^"]*)" elements$/
  */
  public function iShouldSeeMoreElements($element)
  {
    global $nodes;
    $container = $this->getSession()->getPage();
    $node = $container->findAll('css', $element);
    if (count($nodes) >= count($node)) {
      $message = sprintf('%d elements less than %s "%s" found on the page, but should be %d.', count($node));
      throw new Exception($message);
    }
  }

  /**
  * @Then /^I should see sorted "([^"]*)" elements$/
  */
  public function iShouldSeeSortedElements($element)
  {
    $container = $this->getSession()->getPage();
    $list = $container->findAll('css', $element);
    for($i=0;$i<count($list)-1;$i++) {
      $var = $list[$i]->getAttribute('data-newness');
      $var1 =$list[$i+1]->getAttribute('data-newness');
      if($var < $var1) {
        $message = sprintf('elements is not sorted.');
        throw new Exception($message);
      }
    }
  }

  /**
  * @Given /^I switch to the iframe "([^"]*)"$/
  */
  public function iSwitchToIframe($arg1)
  {
    $this->getSession()->switchToIFrame($arg1);
  }

  /**
  * @When I scroll :elementId into view
  */
  public function scrollIntoView($elementId) {
    $function = <<<JS
    (function(){
      var container = $("html,body");
      var scrollTo = $('$elementId');
      container.animate({scrollTop: scrollTo.offset().top - container.offset().top, scrollLeft: 0},300);
    })()
JS;
    try {
      $this->getSession()->executeScript($function);
    }
    catch(Exception $e) {
      throw new \Exception("ScrollIntoView failed");
    }
  }

  /**
  * @Then /^(?:|I )should see Alt text as "(?P<text>(?:[^"]|\\")*)"$/
  */
  public function assertPageContainsAltText($text)
  {
    $session = $this->getSession();
    $element = $session->getPage()->find('css', '.slides > li > a > img[alt="'.$text.'"]');
    if($element->getAttribute('alt')!=$text){
      throw new \InvalidArgumentException(sprintf('Cannot find alt text'));
    }
  }
}
