using Microsoft.AspNetCore.Mvc;

namespace app.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ChoreController : ControllerBase
{
    private readonly ILogger<WeatherForecastController> _logger;

    public ChoreController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
    }

    [HttpGet("{choreId}")]
    public async Task<int> GetChore(int choreId)
    {
        return choreId;
    }

    [HttpPut]
    public async Task<int> AddNewChore()
    {
        return 775;
    }
}
