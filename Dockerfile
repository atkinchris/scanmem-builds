FROM archlinux:base-devel

RUN pacman -Syu --noconfirm git
RUN git clone https://github.com/scanmem/scanmem.git /app

WORKDIR /app
RUN pacman -Syu --noconfirm intltool
RUN ./autogen.sh && \
    ./configure --prefix=/usr && \
    make
