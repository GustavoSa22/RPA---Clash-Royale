***Settings***
##STEPS
Resource            ./resources/Process_definitions/page_login.robot
Resource            ./resources/Process_definitions/page_api_key.robot
Resource            ./resources/Process_definitions/api_integration.robot

##HOOKS##
Resource            ./resources/Suites/suite_setup.robot
Resource            ./resources/Suites/suite_teardown.robot

##Variables and Elements
Resource            ./web_objects/elements_login_page.resource
Resource            ./web_objects/elements_api_key_page.resource


