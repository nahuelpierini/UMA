FROM amazoncorretto:21 as build

WORKDIR /java-test

COPY volumen/Main3.java /java-test

RUN ["javac", "Main3.java"]

# Segunda fase
FROM amazoncorretto:21 as execute

WORKDIR /java-test

COPY --from=build /java-test/Main3.class /java-test

ENTRYPOINT [ "java", "Main3" ]
