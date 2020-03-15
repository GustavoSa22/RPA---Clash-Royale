***Settings***
Library     SeleniumLibrary



***Keywords***
Logar no site do Clash Royale
    Wait Until Element Is Visible       ${main_page.link_login}
    Click Link                          ${main_page.link_login}
    Wait Until Element Is Visible       ${login_page.field_username}
    Input Text                          ${login_page.field_username}    ${users.user}
    #Log to console                      ${users.pass_default}
    Input Password                      ${login_page.field_password}    ${users.password}
    Click Element                       ${login_page.button_login}  
    
   
   
   

