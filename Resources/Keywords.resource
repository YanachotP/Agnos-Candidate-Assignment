*** Settings ***
Library    PuppeteerLibrary
Library    Dialogs
Library    XML
Variables    ../Config/SITE_CONFIG_DEFAULT.yml




*** Keywords ***
Testcase_01_Download
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Button    xpath=//button[div[text()='Download']]
    Element Should Contain    xpath=//div[div[text()='ยินยันการดาวน์โหลด']]    ยินยันการดาวน์โหลด
    Click Button    xpath=//button[div[text()='ยืนยัน']]

Testcase_1_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_2_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Sleep    1    second
    Click Element    xpath=//img[contains(@class, 'css-7wqzbl')]
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_3_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[div[text()='Seek Medical']]//img
    Click Element    xpath=//div[div[text()='Urgent']]//img
    Click Element    xpath=//div[div[text()='Emergency']]//img
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_4_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[div[text()='Self care']]//img
    Click Element    xpath=//div[div[text()='Urgent']]//img
    Click Element    xpath=//div[div[text()='Emergency']]//img
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_5_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[div[text()='Self care']]//img
    Click Element    xpath=//div[div[text()='Seek Medical']]//img
    Click Element    xpath=//div[div[text()='Emergency']]//img
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_6_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[div[text()='Self care']]//img
    Click Element    xpath=//div[div[text()='Seek Medical']]//img
    Click Element    xpath=//div[div[text()='Urgent']]//img
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_7_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[div[text()='Self care']]//img
    Click Element    xpath=//div[div[text()='Seek Medical']]//img
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_8_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_9_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    Sleep    1    second
    Click Element    xpath=//div[div[text()='All']]
    Sleep    0.5    second
    Element Should Be Visible    xpath=//div[div[text()='ยังไม่มีข้อมูลการวินิจฉัย']]
Testcase_10_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    Click Element    xpath=//div[div[text()='Vimut hospital']]
    Click Element    xpath=//div[div[text()='Vimut telemed']]
    Wait Until Element Contains    //table//td//div[text()]    Agnos app
    
Testcase_11_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    Click Element    xpath=//div[div[text()='Agnos application']]
    Click Element    xpath=//div[div[text()='Vimut telemed']]
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
Testcase_12_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    Click Element    xpath=//div[div[text()='Agnos application']]
    Click Element    xpath=//div[div[text()='Vimut hospital']]
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_13_Filter
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//button[div[text()='Channel']]
    Click Element    xpath=//div[div[text()='Vimut hospital']]
    Wait Until Element Contains    //table//td//div[text()]    Agnos app

Testcase_01_log
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    
Testcase_02_log
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    RANDOM@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Wrong email or password')]    Wrong email or password
    
Testcase_03_log
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    RANDOM
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Wrong email or password')]    Wrong email or password
    
Testcase_04_log
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Click Button    xpath=//button[div[text()='Log Out']]

Testcase_01_Navigate
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${HOME_URL}    options=${options}
    Click Button    id:mobile
    Click Element    xpath=//img[contains(@class, 'css-1auai1e')]
    Click Button    xpath=//button[text()='ไว้คราวหลัง']
    Click Element    xpath=//div[div[text()='ลุ้นรางวัล']]
    Element Should Contain    xpath=//div[text()='ลุ้นรางวัล']    ลุ้นรางวัล
    
Testcase_02_Navigate
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${HOME_URL}    options=${options}
    Click Button    id:mobile
    Click Element    xpath=//img[contains(@class, 'css-1auai1e')]
    Click Button    xpath=//button[text()='ไว้คราวหลัง']
    Click Element    xpath=//div[div[text()='ลุ้นรางวัล']]
    Element Should Contain    xpath=//div[text()='ลุ้นรางวัล']    ลุ้นรางวัล
    Click Element   xpath=//div[contains(@class, 'back-button')]/img
    Element Should Contain    xpath=//div[text()='วันนี้มีอะไรให้ Agnos ช่วยไหม?']    วันนี้มีอะไรให้ Agnos ช่วยไหม?
    
Testcase_03_Navigate
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${HOME_URL}    options=${options}
    Click Button    id:mobile
    Click Element    xpath=//img[contains(@class, 'css-1auai1e')]
    Click Button    xpath=//button[text()='ไว้คราวหลัง']
    Click Element    xpath=//div[div[text()='บทความ']]
    Element Should Contain    xpath=//div[div[text()='บทความ']]    บทความ
    
Testcase_01_Reg							
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${REGISTER_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Create Account']
    Input Text    id:Email    Testdemo@gmail.com
    Input Password    xpath=(//input[@type='password'])[1]    Testdemo@12345
    Input Password    xpath=(//input[@type='password'])[2]    Testdemo@12345
    Click Button    xpath=//button[div[text()='Confirm']]
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    
Testcase_02_Reg				
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${REGISTER_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Create Account']
    Input Text    id:Email    Testdemo@gmail.com
    Input Password    xpath=(//input[@type='password'])[1]    12345
    Input Password    xpath=(//input[@type='password'])[2]    12345
    Click Button    xpath=//button[div[text()='Confirm']]
    Element Should Contain    css=div.css-wqvqdc    The password must be at least 8
    
Testcase_03_Reg	
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${REGISTER_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Create Account']
    Input Text    id:Email    Testdemo@gmail.com
    Input Password    xpath=(//input[@type='password'])[1]    Testdemo@12345
    Input Password    xpath=(//input[@type='password'])[2]    Testdemo@54321
    Click Button    xpath=//button[div[text()='Confirm']]
    Wait Until Element Contains    xpath=//div[text()='Create Account']    Create Account
    
Testcase_01_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    Sirapassorn
    Click Element    xpath=//div[text()='Completed']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_02_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    280
    Click Element    xpath=//div[text()='Completed']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count   xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_03_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    0618746559
    Click Element    xpath=//div[text()='Completed']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_04_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    text=
    Click Element    xpath=//div[text()='Completed']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_05_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    Sirapassorn
    Click Element    xpath=//div[text()='In progress']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0

Testcase_06_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    280
    Click Element    xpath=//div[text()='In progress']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_07_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    0618746559
    Click Element    xpath=//div[text()='In progress']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_08_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    text=
    Click Element    xpath=//div[text()='In progress']
    Sleep    2 second
    ${row_count}=    PuppeteerLibrary.Get Element Count    xpath=//table//tbody//tr[contains(@class, 'diagnosis_list_row')]
    Should Be True    ${row_count} > 0
    
Testcase_09_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    Sirapassorn
    Click Element    xpath=//div[text()='Open']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_10_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    280
    Click Element    xpath=//div[text()='Open']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_11_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    0618746559
    Click Element    xpath=//div[text()='Open']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']
    
Testcase_12_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    text=
    Click Element    xpath=//div[text()='Open']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']

Testcase_13_Search
    &{options} =    create dictionary    headless=${False}
    Open Browser    ${LOGIN_URL}    options=${options}
    Wait Until Element Is Visible    xpath=//div[text()='Log-in']
    Input Text    id:Email    test@gmail.com
    Input Password    id:password    12345
    Click Button    xpath=//button[div[text()='Sign in']]
    Element Should Contain    xpath=//div[contains(text(), 'Diagnosis List')]    Diagnosis List
    Input Text    xpath=//input[@placeholder='Patient name, Patient contact, Record ID, Record code']    text=
    Click Element    xpath=//div[text()='Completed']
    Click Element    xpath=//div[text()='Open']
    Sleep    2 second
    Element Should Be Visible    xpath=//div[text()='ยังไม่มีข้อมูลการวินิจฉัย']

    


    
    

