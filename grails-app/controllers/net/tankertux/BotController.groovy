package net.tankertux;

public class BotController {
    BotService botService

    def enable(){
        botService.join()
        redirect action:'index', controller: 'twitchGauge'
    }

    def disable(){
        botService.leave();
        redirect action:'index', controller: 'twitchGauge'
    }
}
