*** Settings ***
Library           SeleniumLibrary    10    run_on_failure=None
Library           OperatingSystem
Library           DebugLibrary
Resource          Keywords/Pages/_IMPORT_PAGES.robot
Resource          Keywords/Logics/_IMPORT_LOGICS.robot
Resource          Setup.robot

*** Variables ***
${SERVER}                 bukalapak.com

***Keywords***
Setup Chromedriver
    Set Environment Variable  webdriver.chrome.driver  ../chromedriver