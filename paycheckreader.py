# importing required modules
from pypdf import PdfReader
import csv

# creating a pdf reader object
reader = PdfReader('example.pdf')

# printing number of pages in pdf file
print(len(reader.pages))

# getting a specific page from the pdf file
page = reader.pages[0]

# extracting text from page
text = page.extract_text()
print(text)

with open("paycheck.csv","w",newline="",encoding="utf-8-sig") as pdata
  csvout = csv.writer(pdata)
