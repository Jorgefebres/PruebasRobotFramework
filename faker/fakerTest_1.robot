*** Settings ***
Library           FakerLibrary    locale=en_US

*** Test Cases ***
Generate Fake Data Example1
    [Documentation]    Robot Framework Faker allows users to generate random test data by using Faker's random test data generation keywords. Using Faker, users avoid using static test data for testing and improve the test to simulate real world data.
    [Tags]    Faker
    Comment    Generate Address
    ${address}=    Address
    Log    ${address}=
    Comment    Generate AM or PM
    ${ampm}=    Am PM
    Log    ${ampm}
    Comment    Generate Boolean
    ${Boolean}=    FakerLibrary.Boolean
    Log    ${Boolean}
    Comment    Generate words
    ${words}=    Words
    Log    words: ${words}
    Comment    Generate an array of random words    Param nb indicates how many words to return
    ${words}=    Words    nb=${10}
    Log    words: ${words}
    Comment    Generate Year
    ${year}=    Year
    Log    ${year}
    Comment    Generate Windows Platform Token
    ${WindowsToken}=    Windows Platform Token
    Log    ${WindowsToken}
    Comment    Generate User Name
    ${UserName}=    User Name
    Log    ${UserName}
    Comment    Generate User Agent
    ${UserAgent}    User Agent
    Log    ${UserAgent}
    Comment    Generate Url
    ${Url}=    Url
    Log    ${Url}
    Comment    Generate Uri Path
    ${Uri}=    Uri
    Log    ${Uri}
    Comment    Generate    Bothify and replace has signs and question marks with random numbers and letters
    ${Bothify}    Bothify    text=##??
    Log    ${Bothify}
    Comment    Generate    Bs
    ${Bs}    Bs
    Log    ${Bs}
    Comment    Generate    Building Number
    ${Building Number}    Building Number
    Log    ${Building Number}
    Comment    Generate    Catch Phrase
    ${Catch Phrase}    Catch Phrase
    Log    ${Catch Phrase}
    Comment    Generate    Century
    ${Century}    Century
    Log    ${Century}
    Comment    Generate    Chrome
    ${Chrome}    Chrome
    Log    ${Chrome}
    Comment    Generate    City
    ${City}    City
    Log    ${City}
    Comment    Generate    City Prefix
    ${City Prefix}    City Prefix
    Log    ${City Prefix}
    Comment    Generate    City Suffix
    ${City Suffix}    City Suffix
    Log    ${City Suffix}
    Comment    Generate    Color Name
    ${Color Name}    Color Name
    Log    ${Color Name}
    Comment    Generate    Company
    ${Company}    Company
    Log    ${Company}
    Comment    Generate    Company Email
    ${Company Email}    Company Email
    Log    ${Company Email}
    Comment    Generate    Company Suffix
    ${Company Suffix}    Company Suffix
    Log    ${Company Suffix}
    Comment    Generate    Country
    ${Country}    Country
    Log    ${Country}
    Comment    Generate    Country Code
    ${Country Code}    Country Code
    Log    ${Country Code}
    Comment    Generate    Credit Card Expire
    ${Credit Card Expire}    Credit Card Expire
    Log    ${Credit Card Expire}
    Comment    Generate    Credit Card Full
    ${Credit Card Full}    Credit Card Full
    Log    ${Credit Card Full}
    Comment    Generate    Credit Card Number
    ${Credit Card Number}    Credit Card Number
    Log    ${Credit Card Number}
    Comment    Generate    Credit Card Provider
    ${Credit Card Provider}    Credit Card Provider
    Log    ${Credit Card Provider}
    Comment    Generate    Credit Card Security Code
    ${Credit Card Security Code}    Credit Card Security Code
    Log    ${Credit Card Security Code}
    Comment    Generate    Date
    ${Date}    Date    pattern=%Y-%m-%d
    Log    ${Date}
    Comment    Generate    Date Time
    ${Date Time}    Date Time
    Log    ${Date Time}
    Comment    Generate    Date Time Ad
    ${Date Time Ad}    Date Time Ad
    Log    ${Date Time Ad}