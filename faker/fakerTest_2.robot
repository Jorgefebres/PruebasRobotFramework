*** Settings ***
Library           FakerLibrary    locale=en_US

*** Test Cases ***
Generate Fake Data Example2
    [Documentation]    Robot Framework Faker allows users to generate random test data by using Faker's random test data generation keywords. Using Faker, users avoid using static test data for testing and improve the test to simulate real world data.
    [Tags]    Faker
    Comment    Generate    Date Time Between
    ${Date Time Between}    Date Time Between    start_date=1986    end_date=now
    Log    ${Date Time Between}
    Comment    Generate
    Comment    Generate    Date Time This Century
    ${Date Time This Century}    Date Time This Century
    Log    ${Date Time This Century}
    Comment    Generate    Date Time This Decade
    ${Date Time This Decade}    Date Time This Decade
    Log    ${Date Time This Decade}
    Comment    Generate    Date Time This Month
    ${Date Time This Month}    Date Time This Month
    Log    ${Date Time This Month}
    Comment    Generate    Date Time This Year
    ${Date Time This Year}    Date Time This Year
    Log    ${Date Time This Year}
    Comment    Generate    Day Of Month
    ${Day Of Month}    Day Of Month
    Log    ${Day Of Month}
    Comment    Generate    Day Of Week
    ${Day Of Week}    Day Of Week
    Log    ${Day Of Week}
    Comment    Generate    Domain Name
    ${Domain Name}    Domain Name
    Log    ${Domain Name}
    Comment    Generate    Domain Word
    ${Domain Word}    Domain Word
    Log    ${Domain Word}
    Comment    Generate    Email
    ${Email}    Email
    Log    ${Email}
    Comment    Generate    Firefox
    ${Firefox}    Firefox
    Log    ${Firefox}
    Comment    Generate    First Name
    ${First Name}    First Name
    Log    ${First Name}
    Comment    Generate    First Name Female
    ${First Name Female}    First Name Female
    Log    ${First Name Female}
    Comment    Generate    First Name Male
    ${First Name Male}    First Name Male
    Log    ${First Name Male}
    Comment    Generate    Free Email
    ${Free Email}    Free Email
    Log    ${Free Email}
    Comment    Generate    Free Email Domain
    ${Free Email Domain}    Free Email Domain
    Log    ${Free Email Domain}
    
    #Comment    Generate    Geo Coordinate
    #${Geo Coordinate}    Geo Coordinate
    #Log    ${Geo Coordinate}
    
    Comment    Generate    Hex Color
    ${Hex Color}    Hex Color
    Log    ${Hex Color}
    Comment    Generate    Init
    ${Init}    Init
    Log    ${Init}
    Comment    Generate    Internet Explorer
    ${Internet Explorer}    Internet Explorer
    Log    ${Internet Explorer}
    Comment    Generate    Ipv 4
    ${Ipv 4}    Ipv 4
    Log    ${Ipv 4}
    Comment    Generate    Ipv 6
    ${Ipv 6}    Ipv 6
    Log    ${Ipv 6}
    Comment    Generate    Iso 8601
    ${Iso 8601}    Iso 8601
    Log    ${Iso 8601}
    Comment    Generate    Job
    ${Job}    Job
    Log    ${Job}
    Comment    Generate    Language Code
    ${Language Code}    Language Code
    Log    ${Language Code}
    Comment    Generate    Last Name
    ${Last Name}    Last Name
    Log    ${Last Name}
    Comment    Generate    Latitude
    ${Latitude}    Latitude
    Log    ${Latitude}
    Comment    Replace all question mark occurences with a random letter
    ${Lexify}    Lexify    text=????
    Log    ${Lexify}
    Comment    Generate    Linux Platform Token
    ${Linux Platform Token}    Linux Platform Token
    Log    ${Linux Platform Token}
    Comment    Generate    Linux Processor
    ${Linux Processor}    Linux Processor
    Log    ${Linux Processor}
    Comment    Generate    Locale
    ${Locale}    Locale
    Log    ${Locale}
    Comment    Generate    Longitude
    ${Longitude}    Longitude
    Log    ${Longitude}
    Comment    Generate    Mac Platform Token
    ${Mac Platform Token}    Mac Platform Token
    Log    ${Mac Platform Token}