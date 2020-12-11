FROM ubuntu:bionic

ENV TZ=Europe/Belgrade

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
    apt-get install -y \
    libglu1-mesa libxi6 libgconf-2-4 libxrender1 ffmpeg awscli curl python3-pip

RUN mkdir /blender
RUN curl https://download.blender.org/release/Blender2.79/blender-2.79b-linux-glibc219-x86_64.tar.bz2 |tar xjv -C /blender --strip-components=1

WORKDIR /blender
