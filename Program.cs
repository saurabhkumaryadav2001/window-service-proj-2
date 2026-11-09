using Microsoft.Extensions.Hosting;
using PcHealthMonitor.Worker;
var builder=Host.CreateApplicationBuilder(args);
builder.Services.AddWindowsService(o=>o.ServiceName="PC Health Monitor");
builder.Services.Configure<MonitorOptions>(builder.Configuration.GetSection("Monitor"));
builder.Services.AddHostedService<HealthWorker>();
await builder.Build().RunAsync();