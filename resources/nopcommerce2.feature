Feature: Bookscategory

Background: I should be able to see homepage
  Given I enter URL "https://demo.nopcommerce.com/" in browser
  And   I am on home page

Scenario Outline: I should be able to see top menu tabs on homepage with categories
  When I am on home page
  Then I should be able to see top menu tabs with "<categories>"

Examples:
  |categories       |
  |Computer         |
  |Electronics      |
  |Apparel          |
  |Digital downloads|
  |Books            |
  |Jewellery        |
  |Gift Card        |

Scenario Outline: I should be able to see book page with filters
  When I select book category from top manu tabs on home page
  Then I should be navigated to book category
  And  I should be able to see "<filters>"

Examples:
  |filters          |
  |Sort by          |
  |Display          |
  |Grid tab         |
  |List tab         |

Scenario Outline: I should be able to see list of terms of each filter
  Given I am on Book page
  When  I click on "<filters>"
  And   I click on any "<options>"
  Then  I should be able to choose any filter option from the list
  And   I should be able to see "<result>"

Examples:
  |filter           |option               |result               |
  |sort by          |Name:A to Z          |sorted product with product name in ascending order|
  |sort by          |Name: Z to A         |sorted product with product name in descending order|
  |sort by          |price: low to high   |sorted product with the price in ascending order   |
  |sort by          |price: high to low   |sorted product with the price in descending order  |
  |sort by          |Created on           |recently added product should show first           |
  |Display          |3                    |3 products per page                                |
  |Display          |6                    |6 products per page                                |
  |Display          |9                    |9 products per page                                |

Scenario Outline: I should be able to see product display format according to display format type as per given picture in srs documents
  Given   I am on book page
  When    I click on "<display format icon>"
  Then    I should be able to see product display format according to display format type as per given picture in srs documents

Examples:
  |display format icon>"|
  |Grid                 |
  |List                 |