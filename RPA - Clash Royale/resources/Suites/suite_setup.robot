***Settings***
Library     SeleniumLibrary
Library     ../../libs/ip_address_recover.py


***Variables***
${URL}          https://developer.clashroyale.com/

${BROWSER}      chrome    


***Keywords***
Before
    ${ipAddress}     Get IP ADDRESS                        
    set global variable                ${ipAddress}
	Open browser                       ${URL}      ${BROWSER}
    Maximize Browser Window  



