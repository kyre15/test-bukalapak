*** Settings ***
Library  REST  https://jsonplaceholder.cypress.io/

*** Variables ***
${json}  {"title": "recommendation", "body": "motorcycle", "userId": 12}

*** Test Cases ***
Make Sure The Endpoint Get Correct response
    Post        /posts                  ${json}
    Integer     response status         201
    Integer     response body userId    12
    String      response body title     recommendation
    String      response body body      motorcycle

