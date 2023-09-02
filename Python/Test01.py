import requests
from bs4 import BeautifulSoup
import pandas as pd
import smtplib

url = "https://rds2.northsouth.edu/index.php/common/showofferedcourses"
r = requests.get(url)

print (r.status_code)

soup = BeautifulSoup(r.text, 'html.parser')

advTable = soup.find('table', class_="oferedtable")

print(advTable)


"""
crsName = []

for i in advTable:
    crs = i.text
    crsName.append(crs)

print(crsName)


"""










"""
for course in advTable.find_all('table'):
    tRows = course.find_all('tr')

    for row in tRows:
        tData = row.find_all('td')



        df = pd.DataFrame(tData)
        print(df)

"""
        