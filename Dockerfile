FROM debian

RUN apt-get update && apt-get install -y unzip wget curl
RUN curl -L https://github.com/storj/storj/releases/latest/download/uplink_linux_amd64.zip -o uplink_linux_amd64.zip && \
  unzip -o uplink_linux_amd64.zip && install uplink /usr/local/bin/uplink && mkdir -p /.config/storj/uplink
RUN wget https://github.com/minio/warp/releases/download/v0.6.4/warp_0.6.4_Linux_x86_64.deb && dpkg -i warp_0.6.4_Linux_x86_64.deb
COPY access.json /.config/storj/uplink/access.json
CMD warp client [::]:5555
