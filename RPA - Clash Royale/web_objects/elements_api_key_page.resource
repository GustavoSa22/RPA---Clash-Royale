***Variables***
#MASSA DADOS
&{keys}                key_name=Teste RPA Key                    key_description=Descrição Teste RPA Key              success_alert_text=Key created successfully.

#ELEMENTS
&{logged_page}         button_user_name=class:btn-default        link_my_account=link:My Account

&{api_key_page}        link_new_key=link:Create New Key          input_key_name=id:name          input_key_description=id:description         input_key_ip=id:range-0         button_create_key=class:ladda-label         success_alert_element=css:#content > div > div.drawer-main-container > div > div > section.account__keys > div > div > div.col-xs-light.col-xs-12.col-sm-6.col-md-5.col-md-offset-2 > ul > div > span:nth-child(3)

&{get_api_key_page}    button_new_key=class:api-key              txt_token=css:#content > div > div.drawer-main-container > div > div > section > div > div > div.col-xs-light.col-xs-12.col-sm-6.col-md-5.col-md-offset-2 > form > div.api-key__token.form-group > div > samp