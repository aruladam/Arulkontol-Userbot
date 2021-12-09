# Using Python Slim-Buster
FROM xluxz/geezproject:buster
# Naruto-Userbot
# Naruto

RUN git clone -b Naruto-Userbot https://github.com/aruladam/Naruto-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/aruladam/Naruto-Userbot/Naruto-Userbot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3", "-m", "userbot"]
