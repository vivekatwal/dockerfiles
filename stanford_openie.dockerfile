FROM ubuntu:latest

RUN apt-get update && apt-get install -y git vim python3 openjdk-8-jre
	
RUN git clone https://github.com/philipperemy/Stanford-OpenIE-Python.git

WORKDIR Stanford-OpenIE-Python/

RUN echo "Barack Obama was born in Hawaii." > samples.txt

CMD ["python3", "main.py", "-f", "samples.txt"]


