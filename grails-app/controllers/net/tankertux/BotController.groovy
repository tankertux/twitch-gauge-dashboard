package net.tankertux

import net.tankertux.exception.UnconfiguredBotException;

public class BotController {
    BotService botService

    def index() {
        redirect action: 'index', controller: 'twitchGauge'
    }

    def enable() {
        if (null == botService.configuration) {
            redirect action: 'configure', controller: 'bot'
        }

        botService.join()
        redirect action: 'index', controller: 'twitchGauge'
    }

    def disable() {
        botService.leave();
        redirect action: 'index', controller: 'twitchGauge'
    }

    def configure() {
        [configuration : botService.configuration]
    }

    def save(params) {
        botService.persist(params)
        redirect action: 'index', controller: 'twitchGauge'
    }

}