FROM ktcdockregistry.azurecr.io/base/windows/dotnet:2.1.5-runtime
WORKDIR /app
ADD AiPingCore/bin/Debug/netcoreapp2.1/publish/ .
RUN dotnet add package Microsoft.ApplicationInsights.Profiler.AspNetCore -v 1.1.3-*
ENTRYPOINT ["dotnet", "AiPingCore.dll"]