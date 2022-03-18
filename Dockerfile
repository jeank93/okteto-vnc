RUN apt-get update
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install -y apt-transport-https sudo htop
RUN apt-get update
RUN apt-get install -y dotnet-sdk-6.0
RUN cd /home/ && wget https://github.com/openbullet/OpenBullet2/releases/download/0.2.3/OpenBullet2.zip
RUN mkdir /home/OpenBullet2
RUN unzip -o /home/OpenBullet2.zip -d /home/OpenBullet2
