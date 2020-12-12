import json
import urllib.request

countries = []
site = 'https://coronavirus-19-api.herokuapp.com/countries'


def getResponse(url):
    operUrl = urllib.request.urlopen(url)
    if(operUrl.getcode()==200):
        data = operUrl.read()
        jsonData = json.loads(data)
    else:
        print("Error receiving data", operUrl.getcode())
    return jsonData

jsonData = getResponse(site)

for i in range(len(jsonData)):
    countries.append(jsonData[i]["country"])
    
print(countries)






