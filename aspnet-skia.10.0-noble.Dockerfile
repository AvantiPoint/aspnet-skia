FROM mcr.microsoft.com/dotnet/aspnet:10.0-noble

RUN apt-get update
RUN apt-get install -y --no-install-recommends libfontconfig1
RUN apt-get install -y --no-install-recommends libfreetype6
RUN apt-get install -y --no-install-recommends libharfbuzz0b
RUN apt-get install -y --no-install-recommends libpng16-16
RUN apt-get install -y --no-install-recommends libexpat1
RUN apt-get install -y --no-install-recommends libjpeg-turbo8
RUN apt-get install -y --no-install-recommends libwebp7
RUN apt-get install -y --no-install-recommends libgif7
RUN apt-get install -y --no-install-recommends libxcb1
RUN apt-get install -y --no-install-recommends libx11-6
RUN apt-get install -y --no-install-recommends libicu74
RUN rm -rf /var/lib/apt/lists/*

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false
