#!/usr/bin/env python3

import requests
from bs4 import BeautifulSoup

# Start session.
session = requests.session()

# Request page you want to scrape.
url = 'https://www.wser.org/history-year-by-year/'
page = session.get(url)

# Parse the webpage
parsers = ['html', 'xlml', 'html5', 'html.parser', 'xlm']
soup = BeautifulSoup(page.content, "lxml")

# Extract header elements <h3>
lines = list(soup.find_all('h3'))
text = [str(line).lower() for line in lines]

# Keep only the entries which contain data we need.
text = text[0:45]
text = [item for item in text if item.find("cancel") is -1] # WS was cancelled in 2008!

