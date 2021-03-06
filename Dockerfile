FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 44336

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["magnificence-pro003/magnificence-pro003.csproj", "magnificence-pro003/"]
RUN dotnet restore "magnificence-pro003/magnificence-pro003.csproj"
COPY . .
WORKDIR "/src/magnificence-pro003"
RUN dotnet build "magnificence-pro003.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "magnificence-pro003.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "magnificence-pro003.dll"]