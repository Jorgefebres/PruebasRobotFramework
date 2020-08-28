*** Settings ***
Library       REST

*** Variables ***
${json}=      {"foo": "bar" }   # JSON object, represented as Python str
&{dict}=      foo=bar           # Python dict, corresponds to JSON object
${array}=     ["foo", "bar"]    # JSON array, represented as Python str
@{list}=      foo   bar         # Python list, corresponds to JSON array

*** Test cases ***
Demonstrate different uses of Output keyword
  Output      "Use double quotes to distinct JSON string from a property"
  Output      { "key": "value" }
  Output      ${json}
  Output      ${dict}
  Output      ${array}
  Output      ${list}