# inherit prebuilt image
FROM AlphaElias/projectAlphaUserBot:latest

# env setup
RUN mkdir /AlphaUserBot && chmod 777 /AlphaElias
ENV PATH="/AlphaUserBot/bin:$PATH"
WORKDIR /AlphaUserBot

# clone repo
RUN git clone https://github.com/AlphaEliasPY/AlphaUserbot -b Alpha /AlphaUaerBot
#RUN git clone https://github.com/AlphaEliasPY/AlphaUserbot -b Alpha /AlphaUserBot

# Copies session and config(if it exists)
COPY ./sample_config.env ./userbot.session* ./config.env* /Fizilion/

# install required pypi modules
RUN pip3 install -r requirements.txt

# Finalization
CMD ["python3","-m","userbot"]
