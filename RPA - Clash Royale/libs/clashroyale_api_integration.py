import json
import requests
import csv
import time

## Método que faz conexão com a API e retorna o ID do Clã
def Get_Clan_ID(accessToken):
    url = 'https://api.clashroyale.com/v1/clans?name=The%20Resistance'
    headers = {'Authorization': 'Bearer '+accessToken}

    r = requests.get(url,headers=headers)

    clan_dict = json.loads(r.text)

    for item in clan_dict['items']:
        try:
            if item.get('tag').find('#9V2Y') >= 0:
                clanId = item.get('tag')
                return clanId[1:]
        except AttributeError:
            pass

## Método que faz conexão com a API e retorna a lista de membros do Clã
def Get_Clan_Members(accessToken,clanId):
    url = 'https://api.clashroyale.com/v1/clans/%'+clanId+'/members'
    headers = {'Authorization': 'Bearer '+accessToken}

    r = requests.get(url,headers=headers)

    member_dict = json.loads(r.text)

    return member_dict

## Método que recebe a lista de membros e cria um CSV com as informações do membro
def Create_Members_CSV(members_dict):   
    with open('members.csv', 'w', newline='',encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerow(["Nome", "Nivel", "Trofeus","Papel"])
        for item in members_dict['items']:
            writer.writerow([item.get('name'),item.get('expLevel'),item.get('trophies'),item.get('role')])