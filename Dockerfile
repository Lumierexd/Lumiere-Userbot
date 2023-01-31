#==============×==============#
#      Created by: Alfa-Ex
#=========× Lumierexd ×=========#

FROM lumierexd/lumiere-userbot:buster

RUN git clone -b Lumiere-Userbot https://github.com/Lumierexd/Lumiere-Userbot /home/lumiereuserbot/ \
    && chmod 777 /home/lumiereuserbot \
    && mkdir /home/lumiereuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/lumiereuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
