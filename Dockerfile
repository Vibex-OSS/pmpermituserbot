FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/TeamInnexia/PmSecurity.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","pmpermit"]
