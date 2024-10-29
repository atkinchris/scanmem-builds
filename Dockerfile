FROM archlinux:base-devel AS builder

RUN pacman -Syu --noconfirm git
RUN git clone https://github.com/scanmem/scanmem.git /app

WORKDIR /app
RUN pacman -Syu --noconfirm intltool
RUN ./autogen.sh && \
    ./configure --prefix=/usr && \
    make

FROM scratch AS export

COPY --from=builder /app/scanmem .
COPY --from=builder /app/.deps .deps
COPY --from=builder /app/.libs .libs
