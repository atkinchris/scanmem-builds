FROM archlinux:base-devel AS builder

RUN pacman -Syu --noconfirm git
RUN git clone https://github.com/scanmem/scanmem.git /app

WORKDIR /app
RUN pacman -Syu --noconfirm intltool
# Patch the makefile to statically link the binary
RUN echo "scanmem_LDFLAGS = -static" >> Makefile.am
RUN ./autogen.sh && \
    ./configure && \
    make

FROM scratch AS export

COPY --from=builder /app/scanmem scanmem
