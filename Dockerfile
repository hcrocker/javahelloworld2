#
FROM java:7
RUN mkdir -p mkdir javahelloworld/bin && mkdir javahelloworld/src
WORKDIR javahelloworld
COPY src src
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
