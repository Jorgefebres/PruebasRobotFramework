*** Settings ***
Library         REST        https://jsonplaceholder.typicode.com/users
Documentation   Guia Basica
...             Pruebas Automatizadas
...             Ejemplos de E2E
...             P.S.: SEAMOS UNO - SMART REASON

*** Variables ***
${new_props}=   { "pockets": "", "money": 0.02 }

*** Test cases ***
GET todos los usuarios
  GET           /users

GET un usuario existente
  GET           /users/1

POST creamos un usuario
  POST          /users      ${CURDIR}/goku.json

PUT to update the existing user - might allow creating one too
  PUT           /users/1    ${new_props}

PATCH to update a single property of the existing user
  PATCH         /users/1    { "name": "Smart Reason" }

DELETE an existing user
  DELETE        /users/1

# The next two methods are implemented by web servers mostly to give
# info to clients. They should not do anything related to the data.

HEAD is identical to GET, but has nothing in response body
  HEAD          /users/1

OPTIONS is used to gain info on the allowed communication options
  OPTIONS       /users/1