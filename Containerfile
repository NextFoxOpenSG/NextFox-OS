# -----------------------------------------------------------------------------
# Stage 1 - Archivos de construcción
# -----------------------------------------------------------------------------

FROM scratch AS ctx

COPY build_files/ /
COPY system_files/ /system_files/

# -----------------------------------------------------------------------------
# Stage 2 - Imagen base
# -----------------------------------------------------------------------------

FROM quay.io/fedora/fedora-bootc:44

LABEL org.opencontainers.image.title="NextFoxOS"
LABEL org.opencontainers.image.description="NextFoxOS - Fedora Atomic + XFCE"
LABEL org.opencontainers.image.vendor="NextFoxOS Project"

# -----------------------------------------------------------------------------
# Construcción del sistema
# -----------------------------------------------------------------------------

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
    --mount=type=cache,target=/var/cache \
    --mount=type=cache,target=/var/log \
    --mount=type=tmpfs,target=/tmp \
    bash /ctx/build.sh

# -----------------------------------------------------------------------------
# Copiar archivos personalizados
# -----------------------------------------------------------------------------

COPY --from=ctx /system_files/ /

# -----------------------------------------------------------------------------
# Verificar imagen
# -----------------------------------------------------------------------------

RUN bootc container lint
