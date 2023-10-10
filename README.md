#DCOKER 
FROM amazoncorretto:21

WORKDIR /java-test

COPY ./Main2.java ./Main2.java

- se ejecuta cuando se crea la imagen ya luego tenemos compilado java

RUN [ "javac", "Main2.java" ]

- cada vez que ejecuto esto con docker run ... solo se ejecuta en Main.class ya se creo una sola vez el Main.class

CMD [ "java", "Main2" ]