package net.tankertux

import net.tankertux.exception.UnconfiguredBotException;

public class BotController {
    BotService botService

    def index() {
        redirect action: 'index', controller: 'twitchGauge'
    }

    def enable() {
        botService.configure()
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
        render view: '/bot/configure'
    }

    def save(params) {
        botService.persist(params)
        redirect action: 'index', controller: 'twitchGauge'
    }

}