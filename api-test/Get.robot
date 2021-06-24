*** Settings ***
Library  REST  https://jsonplaceholder.cypress.io/

*** Test Cases ***
Make Sure The Endpoint has Correct Data Type
    Get         /posts/1
    Integer     response body userId
    Integer     response body id
    String      response body title
    String      response body body

