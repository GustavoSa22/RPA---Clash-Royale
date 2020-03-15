***Settings***
Library     SeleniumLibrary



***Keywords***
Gerar uma API Key
    Wait Until Element Is Visible       ${logged_page.button_user_name}
    Click Button                        ${logged_page.button_user_name}
    Click Element                       ${logged_page.link_my_account}
    Wait Until Element Is Visible       ${api_key_page.link_new_key}
    Click Element                       ${api_key_page.link_new_key}
    Input Text                          ${api_key_page.input_key_name}                  ${keys.key_name}
    Input Text                          ${api_key_page.input_key_description}           ${keys.key_description}
    Input Text                          ${api_key_page.input_key_ip}                    ${ipAddress}
    Click Element                       ${api_key_page.button_create_key}
    Wait Until Element Is Visible       ${api_key_page.success_alert_element}
    Element Should Contain              ${api_key_page.success_alert_element}           ${keys.success_alert_text}
    Wait Until Element Is Visible       ${get_api_key_page.button_new_key}
    Click Element                       ${get_api_key_page.button_new_key}
    Wait Until Element Is Visible       ${get_api_key_page.txt_token}
    ${accessToken}     Get Text         ${get_api_key_page.txt_token}
    set global variable                 ${accessToken}