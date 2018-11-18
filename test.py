#!/usr/bin/python2.7
import time, datetime
import sys
import telepot

chat_id=597519149
now = datetime.datetime.now()
message = (sys.argv[1])
telegram_bot = telepot.Bot('659374951:AAHCRSltEfJSzOIOdZW1-V96KwE_YrcO-Jw')

telegram_bot.sendMessage(chat_id, str(now.hour)+str(":")+str(now.minute)+message)
