*** Settings ***
Library           FakerLibrary    locale=en_US

*** Test Cases ***
Generate Fake Data Example3
    [Documentation]    Robot Framework Faker allows users to generate random test data by using Faker's random test data generation keywords. Using Faker, users avoid using static test data for testing and improve the test to simulate real world data.
    [Tags]    Faker
    Comment    Generate    Mac Processor
    ${Mac Processor}    Mac Processor
    Log    ${Mac Processor}
    Comment    Generate    Md 5
    ${Md 5}    Md 5
    Log    ${Md 5}
    Comment    Generate    Mime Type
    ${Mime Type}    Mime Type
    Log    ${Mime Type}
    Comment    Generate    Month
    ${Month}    Month
    Log    ${Month}
    Comment    Generate    Month Name
    ${Month Name}    Month Name
    Log    ${Month Name}
    Comment    Generate    Name
    ${Name}    Name
    Log    ${Name}
    Comment    Generate    Name Female
    ${Name Female}    Name Female
    Log    ${Name Female}
    Comment    Generate    Name Male
    ${Name Male}    Name Male
    Log    ${Name Male}
    Comment    Generate    Null Boolean
    ${Null Boolean}    Null Boolean
    Log    ${Null Boolean}
    Comment    Replaces all hash sign ('#') occurrences with a random number Replaces all percentage sign ('%') occurrences with a not null number Replaces all exclamation mark ('!') occurrences with a random number from 0 to 9 or empty Replaces all at symbol ('@') occurrences with a random number from 1 to 9 or empty
    ${Numerify}    Numerify    text='1234##4%%1!!45@55'
    Log    ${Numerify}
    Comment    Generate    Opera
    ${Opera}    Opera
    Log    ${Opera}
    Comment    Generate a single paragraph    param nb_sentences around how many sentences the paragraph should contain :param variable_nb_sentences set to false if you want exactly $nbSentences returned, otherwise $nbSentences may vary by +/-40% with a minimum of 1 :return string
    ${Paragraph}    Paragraph    nb_sentences=3
    Log    ${Paragraph}
    Comment    Generate an array of paragraphs    param nb how many paragraphs to return :return array
    ${Paragraphs}    Paragraphs    nb=2
    Log    ${Paragraphs}
    Comment    Generate password according to the params
    ${Password}    Password    length=10    special_chars=True    digits=True    upper_case=True    lower_case=True
    Log    ${Password}
    Comment    Generate    Phone Number
    ${Phone Number}    Phone Number
    Log    ${Phone Number}
    Comment    Generate    Postcode
    ${Postcode}    Postcode
    Log    ${Postcode}
    Comment    Generate    Prefix
    ${Prefix}    Prefix
    Log    ${Prefix}
    Comment    Generate    Prefix Female
    ${Prefix Female}    Prefix Female
    Log    ${Prefix Female}
    Comment    Generate    Prefix Male
    ${Prefix Male}    Prefix Male
    Log    ${Prefix Male}
    Comment    Generate    Profile
    ${Profile}    Profile
    Log    ${Profile}
    Comment    Generate    Provider
    Comment    Generate    Pybool
    ${Pybool}    Pybool
    Log    ${Pybool}
    Comment    Generate    Pydecimal
    ${Pydecimal}    Pydecimal
    Log    ${Pydecimal}
    Comment    Generate    Pydict
    ${Pydict}    Pydict
    Log    ${Pydict}
    Comment    Generate    Pyfloat
    ${Pyfloat}    Pyfloat
    Log    ${Pyfloat}
    Comment    Generate    Pyint
    ${Pyint}    Pyint
    Log    ${Pyint}
    Comment    Generate    Pyiterable
    ${Pyiterable}    Pyiterable
    Log    ${Pyiterable}
    Comment    Generate    Pylist
    ${Pylist}    Pylist
    Log    ${Pylist}
    Comment    Generate    Pyset
    ${Pyset}    Pyset
    Log    ${Pyset}
    Comment    Generate    Pystr
    ${Pystr}    Pystr
    Log    ${Pystr}
    Comment    Generate    Pystruct
    ${Pystruct}    Pystruct
    Log    ${Pystruct}
    Comment    Generate    Pytuple
    ${Pytuple}    Pytuple    nb_elements=10
    Log    ${Pytuple}