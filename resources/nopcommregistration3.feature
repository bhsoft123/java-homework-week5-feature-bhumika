Feature: Nopcommerece Registration

  As a user, I want to check the Register functionality of Nopcommerece page

Background: I am on Nopcommerce Registration page
  Given I open the Google Chrome Browser
  When  I open the URL https://demo.nopcommerce.com/register
  Then  I am on Nopcommerce Registration page

Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
  When  I enter first name "<First Name>"
  And   I enter last name "<Last Name>"
  And   I enter email address "<Email>"
  And   I enter password "<Password>"
  And   I enter confirm password "<Confirm Password>"
  And   Click on Register button
  Then  I can see an error message "<error message>"
  And   I am not able to register

 Examples:
  |First Name   |Last Name    |Email           |Password     |Confirm Password|error message    |
  |""           |Bakshi       |bakshi@gmail.com|456789       |456789          |Please enter First Name|
  |Rohan        |""           |bakshi@gmail.com|456789       |456789          |Please enter Last Name |
  |Rohan        |Bakshi       |""              |456789       |456789          |Please enter Valid Email|
  |Rohan        |Bakshi       |bakshi@gmail.com|""           |456789          |Password is required   |
  |Rohan        |Bakshi       |bakshi@gmail.com|456789       |""              |Confirm password is required|
  |Rohan        |Bakshi       |bakshi@gmail.com|456789       |45678           |Password and confirm password do not match|
  |Rohan        |Bakshi       |bakshi@gmail.com|456          |""              |minimum 6 character password is required   |
  |""           |""           |""              |""           |""              |mandatory fields are required   |

Scenario: I should be able to select any one radio button from Gender label of Your Personal Details section
  Given   I am on Gender label of Your Personal Details section
  When    I select "Male" radio button
  And     I select "Female" radion button
  Then    I am able to select any one of the radio button

Scenario Outline: I should be able to select Day, Month an Year from drop down list of the Date of Birth field
  Given   I am on Date of Birth field of Your Personal Details section
  When    I select day "<Day>"
  And     I select month "<Month>"
  And     I select year "<Year>"
  Then    I am able to select Day, Month and Year from drop down list

 Examples:
    |Day    |Month    |Year     |
    |11     |November |1989     |

Scenario: I should be able to check and uncheck Newsletter box on Options section
  Given   I am on Newsletter box sections
  When    I click on the Newsletter checkbox
  And     I again click on the Newletter checkbox
  Then    I am able to check and uncheck the Newsletter box

Scenario: I should be able to register with valid mandatory (*) field data on registration page
  When    I enter First name "Rohan"
  And     I enter Last name  "Bakshi"
  And     I enter Email "bakshi@gmail.com"
  And     I enter Password "456789"
  And     I enter Confirm Password "456789"
  And     I click on Register button
  Then    I am able to register successfully
