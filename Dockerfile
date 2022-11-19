from ubuntu

RUN apt update && apt upgrade && apt install openjdk-17-jdk-headless -y

EXPOSE 25565/udp
EXPOSE 25565/tcp

RUN useradd -ms /bin/bash minecraft
COPY ./serverfiles /home/minecraft/sourcefiles 
RUN chown -R minecraft:minecraft /home/minecraft/sourcefiles

USER minecraft
WORKDIR /home/minecraft/sourcefiles

CMD ["bash", "-c", "./run.sh"]









