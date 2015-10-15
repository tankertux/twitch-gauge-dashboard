package net.tankertux

public class BotController {
    BotService botService

    def index() {
        redirect action: 'index', controller: 'twitchGauge'
    }

    def enable() {
        if (null == botService.configuration) {
            redirect action: 'configure', controller: 'bot', namespace: null
        } else {
            botService.join()
            redirect action: 'index', controller: 'twitchGauge'
        }
    }

    def disable() {
        botService.leave();
        redirect action: 'index', controller: 'twitchGauge'
    }

    def configure() {
        [configuration: botService.configuration ?: new BotConfiguration(), allConfigurations: botService.configs()]
    }

    def save(params) {
        botService.persist(params)
        redirect action: 'index', controller: 'twitchGauge'
    }

    def select(params) {
        def tokens = params.selected.split(" ")
        botService.configuration = BotConfiguration.get(new BotConfiguration(botName: tokens[0], channel: tokens[2]))
        redirect action: 'index', controller: 'twitchGauge'
    }

}