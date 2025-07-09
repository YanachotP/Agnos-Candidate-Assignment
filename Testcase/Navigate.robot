*** Settings ***
Suite Setup    TestLifeCycle.Default Suite Setup
Suite Teardown    TestLifeCycle.Default Suite Teardown
Test Setup    TestLifeCycle.Default Test Setup
Test Teardown    TestLifeCycle.Default Test Teardown
Resource    ../Utils/TestLifeCycle.resource
Resource  ../Resources/Keywords.resource
Variables    ../Config/TEST_DATA_DEFAULT.yml


*** Test Cases ***
TestCase_01_Navigate
    Testcase_01_Navigate
TestCase_02_Navigate
    Testcase_02_Navigate
TestCase_03_Navigate
    Testcase_03_Navigate

