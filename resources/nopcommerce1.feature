Feature: Demo Nopcommerce's topmenu acceptance criteria

  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When  User types URL https://demo.nopcommerce.com
    And   User clicks on Enter button
    Then  User is on given URL

  Scenario: Verify that user can navigate to Books category
    When  User is on given URL
    And   Clicks on Books tab on Top menu
    Then  User is navigated to Books category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When  User is given URL
    And   Clicks on Books tab on Top menu
    Then  Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Checks 'Sort by' filer is present
    Then  'Sort by' filter is available on Book category page

  Scenario: Verify that user can see 'Display' filter on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Checks 'Display' filter is present
    Then  'Display' filter is available on Book category page

  Scenario: Verify that user can see 'Grid' tab on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Checks 'Grid' tab is present
    Then  'Grid' tab is available on Book category page

  Scenario: Verify that user can see 'List' tab on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Checks 'List' tab is present
    Then  'List' tab is available on Book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Clicks on 'Sort by' filter
    And   Checks that 'Name: A to Z' selection is present
    Then  'Name: A to Z' is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z is first option in 'Sort by' filter
    Given  User is on Books category page
    When  User is on Books category page
    And   Clicks on 'Sort by' filter
    And   Checks that 'Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected (Not: Products are filtered in alphabetical order(
    Given User is on Books category page
    When User is on Books category page
    And Clicks on 'Sort by' filter
    And Selects'Nmae: A to Z' filter
    Then All products are displayed in alphabetical order
