FROM poychang/dotnet-servercore:latest
WORKDIR /app
ADD AiPingCore/bin/Debug/netcoreapp2.1/publish/ .
ENTRYPOINT ["dotnet", "AiPingCore.dll"]