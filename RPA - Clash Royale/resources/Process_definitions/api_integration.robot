***Settings***
Library     ../../libs/clashroyale_api_integration.py


***Keywords***
Gerar lista de members do cla
    ${clanId}            Get Clan ID          ${accessToken}        
    ${members}           Get Clan Members     ${accessToken}        ${clanId}
    Create Members CSV                        ${members}