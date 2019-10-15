import mysql.connector
import pyttsx3 #pip install pyttsx3
import time
from playsound import playsound

engine = pyttsx3.init('sapi5')
voices = engine.getProperty('voices')
# print(voices[1].id)
engine.setProperty('voice', voices[1].id)


def speak(audio):
    engine.say(audio)
    engine.runAndWait()

#string comparison return true or return false
def match(answer,choice):
    if answer.lower()==choice.lower():
        return 1
    else:
        return 0

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="kbc"
)
mycursor = mydb.cursor()
mycursor.execute("SELECT question,option1,option2,option3,option4,correctanswer,id,Price FROM kbc")
myresult = mycursor.fetchall()
f=1
print("Please Enter the PLayer Name:")
name=input()
print("Please Enter the Profession Name:")
prof=input()
playsound('KBC.mp3')
speak(f"So in the Hot Seat We Have Mister{name} who is an {prof}")
time.sleep(1)
speak(f"Lets Play The game with Mr {name}")
count=(mycursor.rowcount)
while(f==1):
    for row in myresult:
        print(f"\nAnd Your Question {row[6]} is=>",row[0])
        speak(f"And Your Question {row[6]} is "+row[0])
        print("Option A:",row[1])
        speak("Option A:"+row[1])
        time.sleep(1)
        print("Option B:",row[2])
        speak("Option B:"+row[2])
        time.sleep(1)
        print("Option C:==>",row[3])
        speak("Option C"+row[3])
        time.sleep(1)
        print("Option D:==>",row[4])
        speak("Option D"+row[4])
        time.sleep(1)
        answer=row[5]
        # print(answer)
        print("And Your Answer Is")
        choice=input()
        a=match(answer,choice)
        #print(a)
        time.sleep(3)
        speak(f"So Mister {name}  What You think")
        time.sleep(2)
        if a==1:
            speak(f"Congrats You have won  rupees"+row[7])
            print(f"Congrats You have won  rupees"+row[7])
            time.sleep(2)
        else:
            print("Sorry You Lose And God Bless You Always")
            speak("Sorry You Lose And God Bless You Always")
            f=0
            break
        if count==row[6]:
            speak("Adbhoot Adbhoot Adbhoot You have won 1 Crore Rupees")
            playsound('KBC.mp3')
            speak("SO We will meet in next Episode Thank You")
            f=0
            break

mydb.close()

        

        





