*** Settings ***
Library           FakerLibrary    locale=en_US

*** Test Cases ***
Generate Fake Data Example4
    [Documentation]    Robot Framework Faker allows users to generate random test data by using Faker's random test data generation keywords. Using Faker, users avoid using static test data for testing and improve the test to simulate real world data.
    [Tags]    Faker
    Comment    Returns a random number between 1 and 9
    ${Random Digit}    Random Digit
    Log    ${Random Digit}
    Comment    Generate    Random Digit Not Null
    ${Random Digit Not Null}    Random Digit Not Null
    Log    ${Random Digit Not Null}
    Comment    Returns a random number between 1 and 9
    ${Random Digit Not Null Or Empty}    Random Digit Not Null Or Empty
    Log    ${Random Digit Not Null Or Empty}
    Comment    Generate    Random Digit Or Empty
    ${Random Digit Or Empty}    Random Digit Or Empty
    Log    ${Random Digit Or Empty}
    Comment    Returns a random element from a passed array
    ${Random Element}    Random Element    array=('a', 'b', 'b')
    Log    ${Random Element}
    Comment    Generate a random integer
    ${Random Int}    Random Int    min=0    max=9999
    Log    ${Random Int}
    Comment    Returns a random letter from a to z
    ${Random Letter}    Random Letter
    Log    ${Random Letter}
    Comment    Returns a random number with 0 to $digits digits
    ${Random Number}    Random Number    digits=5
    Log    ${Random Number}
    Comment    Returns a random value near to number
    ${Randomize Nb Elements}    Randomize Nb Elements    number=6
    Log    ${Randomize Nb Elements}
    Comment    Generate    Rgb Color
    ${Rgb Color}    Rgb Color
    Log    ${Rgb Color}
        
    Comment    Generate    Rgb Css Color
    ${Rgb Css Color}    Rgb Css Color
    Log    ${Rgb Css Color}
    Comment    Generate    Safari
    ${Safari}    Safari
    Log    ${Safari}
    Comment    Generate    Safe Color Name
    ${Safe Color Name}    Safe Color Name
    Log    ${Safe Color Name}
    Comment    Generate    Safe Email
    ${Safe Email}    Safe Email
    Log    ${Safe Email}
    Comment    Generate    Safe Hex Color
    ${Safe Hex Color}    Safe Hex Color
    Log    ${Safe Hex Color}
    Comment    Generate    Secondary Address
    ${Secondary Address}    Secondary Address
    Log    ${Secondary Address}
    Comment    Generate a random sentence    param nb_words around how many words the sentence should contain
    ${Sentence}    Sentence    nb_words=5
    Log    ${Sentence}
    Comment    Generate an array of sentences
    ${Sentences}    Sentences    nb=3
    Log    ${Sentences}
    Comment    Calculates the sha 1 hash of a given string
    ${Sha 1}    Sha 1    text='Selenium Master'
    Log    ${Sha 1}
    Comment    Calculates the sha 256 hash of a given string
    ${Sha 256}    Sha 256    text='Selenium Master'
    Log    ${Sha 256}
    Comment    Generate    Simple Profile
    ${Simple Profile}    Simple Profile
    Log    ${Simple Profile}
    Comment    Generate    Django algorithm
    ${Slug}    Slug
    Log    ${Slug}
    Comment    Generate    State
    ${State}    State
    Log    ${State}
    Comment    Generate    State Abbr
    ${State Abbr}    State Abbr
    Log    ${State Abbr}
    Comment    Generate    Street Address
    ${Street Address}    Street Address
    Log    ${Street Address}
    Comment    Generate    Street Name
    ${Street Name}    Street Name
    Log    ${Street Name}
    Comment    Generate    Street Suffix
    ${Street Suffix}    Street Suffix
    Log    ${Street Suffix}
    Comment    Generate    Suffix
    ${Suffix}    Suffix
    Log    ${Suffix}
    Comment    Generate    Suffix Female
    ${Suffix Female}    Suffix Female
    Log    ${Suffix Female}
    Comment    Generate    Suffix Male
    ${Suffix Male}    Suffix Male
    Log    ${Suffix Male}
    Comment    Generate a text string. Param max_nb_chars indicates maximum number of characters the text should contain
    ${Text}    Text    max_nb_chars=100
    Log    ${Text}
    Comment    Generate    Time
    ${Time}    Time    pattern=%H:%M:%S
    Log    ${Time}
    Comment    Generate    Timezone
    ${Timezone}    Timezone
    Log    ${Timezone}
    Comment    Generate    Tld
    ${Tld}    Tld
    Log    ${Tld}
    Comment    Generate    Unix Time
    ${Unix Time}    Unix Time
    Log    ${Unix Time}
    Comment    Generate    Uri
    ${Uri}    Uri
    Log    ${Uri}
    Comment    Generate    Uri Extension
    ${Uri Extension}    Uri Extension
    Log    ${Uri Extension}
    Comment    Generate    Uri Page
    ${Uri Page}    Uri Page
    Log    ${Uri Page}
    Comment    Generate    Uri Path
    ${Uri Path}    Uri Path
    Log    ${Uri Path}
    Comment    Generate    Url
    ${Url}    Url
    Log    ${Url}
    Comment    Generate    User Agent
    ${User Agent}    User Agent
    Log    ${User Agent}
    Comment    Generate    User Name
    ${User Name}    User Name
    Log    ${User Name}
    Comment    Generate    Windows Platform Token
    ${Windows Platform Token}    Windows Platform Token
    Log    ${Windows Platform Token}
    Comment    Generate    Word
    ${Word}    Word
    Log    ${Word}
    Comment    Generate an array of random words;    param nb indicates how many words to return
    ${Words}    Words    nb=5
    Log    ${Words}
    Comment    Generate    Year
    ${Year}    Year
    Log    ${Year}