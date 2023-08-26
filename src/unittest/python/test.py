#Package for making API calls in python
import requests

#API call to serve service listing on 8080 port
x = requests.get('http://serve:8080/ping')

#Printing the response
print(x.text)