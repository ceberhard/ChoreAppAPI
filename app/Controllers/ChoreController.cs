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

    [HttpPut]
    public async Task<int> AddNewChore()
    {
        return 0;
    }
}
