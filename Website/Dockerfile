FROM microsoft/dotnet:2.1.4-aspnetcore-runtime-alpine3.7 AS base
WORKDIR /app
EXPOSE 80

FROM microsoft/dotnet:2.1.401-sdk-alpine3.7 AS build
WORKDIR /src
COPY . .

RUN dotnet restore dotnet-containers.sln -nowarn:msb3202,nu1503
WORKDIR /src/Website

RUN dotnet build --no-restore -c Release -o /app

FROM build AS publish
RUN dotnet publish --no-restore -c Release -o /app

FROM base AS final

WORKDIR /app
COPY --from=publish /app .

ENTRYPOINT ["dotnet", "Website.dll"]
