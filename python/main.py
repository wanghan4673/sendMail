# -*- coding: UTF-8 -*-
import time
import mail

if __name__ == "__main__":
    for i in range(5):
        time.sleep(1)
        print("hello world!")
    mail.sendMail()
