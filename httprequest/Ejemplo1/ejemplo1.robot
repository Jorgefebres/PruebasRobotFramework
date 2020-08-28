*** Settings ***
Library       REST      https://jsonplaceholder.typicode.com

*** Test cases ***
Get one user, output the response
  GET         /users/1
  Output      response