# Pointer API

## IIS Deployment

### Host ASP.NET Core on Windows with IIS

The new api is runing on Kestrel server while the iis use as reverse proxy.  
The Kestrel web server is a new web server as part of ASP.NET Core.  
It is now the preferred web server for all new ASP.NET applications.  
the published site is a console app and to run it on iis we need to follow these steps:  

1. Install the [.NET Core Windows Server Hosting bundle] on the hosting system. The bundle installs the .NET Core Runtime, .NET Core Library, and the ASP.NET Core Module. The module creates the reverse-proxy between IIS and the Kestrel server. If the system doesn't have an Internet connection, obtain and install the Microsoft Visual C++ 2015 Redistributable before installing the .NET Core Windows Server Hosting bundle.

2. Restart the system or execute net stop was /y followed by net start w3svc from a command prompt to pick up a change to the system PATH.

3. Create a new IIS Application Pool.  
the ".Net Framework version:" should be "No Managed Code".

4. Create new application in the iis that uses the new application pool.

5. In the new Application directory put the site published content.

6. IIS reset and we are ready to go.

## Site Configuration

The new site uses json files for configuration instead of Web.config.  
the config file named "appsettings.production.json"

```javascript
{
  "ConnectionStrings": {
    "DefaultConnection": "Data Source=DB/database.db",
    "FleetConnection": "Data Source=207.232.46.176;Initial Catalog=Fleet;User ID=**;Password=**"
  },
  "Caching": {
     "Redis": {
      "Connection": "********************************************************,ssl=False,abortConnect=False,connectRetry=5",
      "Name": "DEV"
    }
  },
  "Serilog": {
    "LogDirectory": "C:\\API-CORE-LOGS",
    "IncludeScopes": false,
    "LogLevel": {
       "Default": "Trace",
      "System": "Trace",
      "Microsoft": "Trace"
    }
  }
}
```


## Logging

For logging we will use [Seriolg].  
Serilog provides diagnostic logging with structure even data
### Structured logging

Treating logs as data gives us greater insight into the operational activity of the systems we build. Structured logging, which is using a consistent, predetermined message format containing semantic information, builds on this technique and enables tools such as Graylog2 and Splunk to yield deeper insights. We recommend adopting structured logging because the benefits outweigh the minimal effort involved and the practice is becoming the default standard.  
download [Seq] to enable logging.  
browse to http://localhost:5341 to see the logs.  
**Seq is enabled only for testing**
## Cros Origin Requests (cors)





## Redis Implementation


[Seriolg]: <https://serilog.net/>
[.NET Core Windows Server Hosting bundle]: <https://aka.ms/dotnetcore.2.0.0-windowshosting>
[Seq]: <https://getseq.net/>