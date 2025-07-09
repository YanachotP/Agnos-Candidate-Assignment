*** Settings ***
Suite Setup    TestLifeCycle.Default Suite Setup
Suite Teardown    TestLifeCycle.Default Suite Teardown
Test Setup    TestLifeCycle.Default Test Setup
Test Teardown    TestLifeCycle.Default Test Teardown
Resource    ../Utils/TestLifeCycle.resource
Resource  ../Resources/Keywords.resource


*** Test Cases ***
TestCase_01
    Testcase_1_Filter
TestCase_02
    Testcase_2_Filter
TestCase_03
    Testcase_3_Filter
TestCase_04
    Testcase_4_Filter
TestCase_05
    Testcase_5_Filter
TestCase_07
    Testcase_7_Filter
TestCase_08
    Testcase_8_Filter
TestCase_09
    Testcase_9_Filter
TestCase_10
    Testcase_10_Filter
TestCase_11
    Testcase_11_Filter
TestCase_12
    Testcase_12_Filter
TestCase_13
    Testcase_13_Filter