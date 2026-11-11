FROM mcr.microsoft.com/dotnet/aspnet:11.0-resolute

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libfontconfig1 \
        libfreetype6 \
        libharfbuzz0b \
        libpng16-16t64 \
        libexpat1 \
        libjpeg-turbo8 \
        libwebp7 \
        libgif7 \
        libxcb1 \
        libx11-6 \
        libicu78 \
    && rm -rf /var/lib/apt/lists/*

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
