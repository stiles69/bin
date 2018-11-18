#!/usr/bin/python2.7
import time, datetime
import sys
import telepot

chat_id=597519149
now = datetime.datetime.now()
message = (sys.argv[1])
telegram_bot = telepot.Bot('NEED TO PUT API-KEY HERE')

telegram_bot.sendMessage(chat_id, str(now.hour)+str(":")+str(now.minute)+message)
