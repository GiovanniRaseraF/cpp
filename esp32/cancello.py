import logging
import urllib.request
from telegram import *
from telegram.ext import *
from datetime import datetime
import time
import logging

logging.basicConfig(filename='cancello.log', encoding='utf-8', level=logging.DEBUG)
FIXED_DIFFERENCE = 5000 # Milliseconds

def selezioneApertura(update: Update, context: CallbackContext) -> None:
    daAprire = update.message.text

    messageDate = update.message.date
    now = datetime.now()

    contents = 0
    notify = True
    deleted = False
    
    # Time into milliseconds
    intMessageDate = messageDate.timestamp()*1000
    intNow = now.timestamp()*1000
    
    # Perform
    try: 
        if abs(intNow - intMessageDate) < FIXED_DIFFERENCE or True:
            if daAprire == "Luce":
                contents = urllib.request.urlopen("http://192.168.8.109/1")
            if daAprire == "500":        
                contents = urllib.request.urlopen("http://192.168.8.109/2")
            if daAprire == "Jeep":
                contents = urllib.request.urlopen("http://192.168.8.109/3")
            if daAprire == "Cancello":
                contents = urllib.request.urlopen("http://192.168.8.109/4")
        else:
            deleted = True
    except:
        notify = False
        print(f'ERROR ON: | {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        logging.warning('| {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        update.message.reply_text("ERRORE: Nessun segnale")
    if notify:  
        print(f': | {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        logging.info(f': | {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        update.message.reply_text(f'{update.effective_user.first_name} Clicca: {daAprire}')
    
    if deleted:
        print(f'DELETED: | {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        logging.warning('| {update.effective_user.first_name} Clicca: {daAprire} | timestamp = {now}')
        update.message.reply_text(f"DELETED: Differeza alta Diff: {abs(int(intNow/1000)-int(intMessageDate/1000))} secondi")

def startCommand(update: Update, context: CallbackContext) -> None:
    buttons = [
        [KeyboardButton("Cancello"), KeyboardButton("500")], 
        [KeyboardButton("Jeep"), KeyboardButton("Luce")],
        [KeyboardButton("--")],
        #[KeyboardButton("--")]
    ]
    context.bot.send_message(chat_id=update.effective_chat.id, text = "Apri: ", 
    reply_markup=ReplyKeyboardMarkup(buttons))

updater = Updater('2118547903:AAGdwJ4YaH8hF1ds3Fx-uVKCDE2bXYNlNn8')

updater.dispatcher.add_handler(CommandHandler('start', startCommand))
updater.dispatcher.add_handler(MessageHandler(Filters.text, selezioneApertura))
updater.start_polling()
updater.idle()