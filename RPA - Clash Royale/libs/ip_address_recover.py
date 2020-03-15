import requests

## Método que realiza a busca do IP Externo através do Site ipapi
def Get_IP_ADDRESS():
    url = 'https://ipapi.co/ip/'

    r = requests.get(url)

    return r.text