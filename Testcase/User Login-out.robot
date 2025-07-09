*** Settings ***
Suite Setup    TestLifeCycle.Default Suite Setup
Suite Teardown    TestLifeCycle.Default Suite Teardown
Test Setup    TestLifeCycle.Default Test Setup
Test Teardown    TestLifeCycle.Default Test Teardown
Resource    ../Utils/TestLifeCycle.resource
Resource  ../Resources/Keywords.resource
Variables    ../Config/TEST_DATA_DEFAULT.yml


*** Test Cases ***
TestCase_01
    Testcase_01_log
TestCase_02
    Testcase_02_log
TestCase_03
    Testcase_03_log
TestCase_04
    Testcase_04_log