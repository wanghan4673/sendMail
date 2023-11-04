function mail()
    mail = '发送邮箱';
    password = '对应邮箱的密码和权限码';
    
    setpref('Internet', 'SMTP_Server', 'smtp.qq.com');
    setpref('Internet', 'E_mail', mail);
    setpref('Internet', 'SMTP_Username', mail);
    setpref('Internet', 'SMTP_Password', password);

    props = java.lang.System.getProperties;
    props.setProperty('mail.smtp.auth','true');
    props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
    props.setProperty('mail.smtp.socketFactory.port','465');
    
    recipient = '目标邮箱';
    subject = '任务完成提醒';
    message = '您的代码已运行结束';
    
    sendmail(recipient, subject, message);
end