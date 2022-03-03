FROM mcr.microsoft.com/dotnet/sdk:5.0-focal AS build
WORKDIR /app
COPY . .
ENTRYPOINT [ "dotnet", "build", "-o", "/app/bin/" ]
CMD [ "-c", "Release" ]
