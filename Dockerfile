# שימוש בתמונה בסיסית של Ubuntu
FROM ubuntu:20.04

# עדכון חבילות והתקנת Python
RUN apt-get update && apt-get install -y python3 python3-pip

# קביעת ברירת המחדל לפקודה python
RUN ln -s /usr/bin/python3 /usr/bin/python

# בדיקה שהכול עובד
CMD ["python", "--version"]
