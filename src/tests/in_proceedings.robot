*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Application And Go To Add Reference Page

*** Test Cases ***

Set Correct Information For Inproceedings Reference
    Select Dropdown By Value  inproceedings
    Check Form Is Loaded
    Set Reference Id  dk80085
    Set Author  Dalinar Kholin
    Set Title  Oathbringer
    Set Booktitle  OATHBRINGER
    Set Year  2002
    Set Volume  2
    Submit Information
    Adding Reference Should Succeed

Try Adding Inproceedings Reference With Missing Information
    Select Dropdown By Value  inproceedings
    Check Form Is Loaded
    Set Reference Id  dk80085
    Set Author  Dalinar Kholin
    Set Title  Oathbringer
    Set Booktitle  OATHBRINGER
    Set Volume  2
    Submit Information
    Adding Reference Should Fail

*** Keywords ***

Reset Application And Go To Add Reference Page
    Reset Application
    Go To Add Reference Page
Check Form Is Loaded
    Wait Until Keyword Succeeds    30s    2s    Page Should Contain Element    booktitle