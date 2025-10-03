FROM mongo:5

EXPOSE 27017

COPY run.sh /run.sh
COPY ./files/mongod.conf /etc/mongod.conf

RUN chmod +x /run.sh

CMD ["/run.sh"]
