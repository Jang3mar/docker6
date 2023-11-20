FROM ubuntu:latest
#обновляем файлы и устанавливаем недостающие, затем просто очищаем лишнее чтобы было место
RUN apt-get update && apt-get install -y \
x11-apps \
xauth \
#openjdk-11-jre \  для джавы
&& rm -rf /var/lib/apt/lists/*

#COPY calc.jar /new-app/ для джавы

ENV DISPLAY=:0

CMD ["xeyes"]
#CMD ["java", "-jar", "/new-app/calc.jar"] - Для джавы