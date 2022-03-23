*** Settings ***
Documentation       To Get Part of String and Combine it
Library     String
Library     Collections


*** Variables ***
${A}    KASHISH
${B}    SATIJA


*** Test Cases ***
Let's Join these strings
    [Documentation]     Fetch some letters and combine
    ${1st_3}     GET FIRST THREE
    ${Last_3}    GET LAST THREE
    ${Result}    JOIN THESE STRINGS    ${1st_3}    ${Last_3}
    LOG TO CONSOLE    ${Result}


*** Keywords ***
GET FIRST THREE
    [Documentation]     Print the 1st 3 characters
    ${First_Three}    GET SUBSTRING    ${A}    0    3
    [Return]    ${First_Three}

GET LAST THREE
    [Documentation]     Print the last 3 characters
    ${Last_Three}    GET SUBSTRING    ${B}    -3
    [Return]    ${Last_Three}

JOIN THESE STRINGS
    [Documentation]     Join 1st three and last three
    [Arguments]    ${First_Three}    ${Last_Three}
    ${Join}    CATENATE    SEPARATOR=    ${First_Three}    ${Last_Three}
    [Return]    ${Join}
