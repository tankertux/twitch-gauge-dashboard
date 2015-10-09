package net.tankertux;

public class BotController {
    BotService botService
    BotConfigurationService configurationService

    def enable(){
        botService.join(configurationService.fetch())
        redirect action:'index', controller: 'twitchGauge'
    }

    def disable(){
        botService.leave();
        redirect action:'index', controller: 'twitchGauge'
    }
}
