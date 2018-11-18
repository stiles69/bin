#!/usr/bin/python


import telepot
from pprint import pprint




bot = telepot.Bot('659374951:AAHCRSltEfJSzOIOdZW1-V96KwE_YrcO-Jw')


response = bot.getUpdates()

# Print all raw messages with chat_id,text,type,username
pprint(response)
