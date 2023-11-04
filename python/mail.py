# -*- coding: UTF-8 -*-

import yagmail


def sendMail():
    # 设置发送邮件的目标邮箱
    email = '修改为目标邮箱'

    # 通过自己的邮箱向用户邮箱发送邮件
    yag = yagmail.SMTP(user='修改为发送邮箱', password='发送邮箱的密码或权限码', host='smtp.tongji.edu.cn')

    # 发送邮件
    subject = "程序完成通知"
    message = "您的程序已运行完成"

    yag.send(to=[email], subject=subject, contents=message)
    print("邮件通知已发送")