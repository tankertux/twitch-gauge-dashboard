package net.tankertux

import groovy.util.logging.Slf4j
import net.tankertux.exception.UnconfiguredBotException

@Slf4j
public class BotService {

    def twitchBot

    def join() {
        if (twitchBot.isConnected()) {
            twitchBot.sendMessage('*Beep Boop* Gauge bot online')
        } else {
            twitchBot.nickname = configuration.botName
            twitchBot.channel = configuration.channel
            twitchBot.connect(configuration.host, configuration.port, configuration.oauthKey)
        }
    }

    def leave() {
        if (twitchBot.isConnected()) twitchBot.disconnect()
    }

    BotConfiguration configuration

    def configure() {
        if(null == configuration){
            setConfiguration(BotConfiguration.get(1))
        }
        return configuration
    }

    private void setConfiguration(def config){
        validate(config)
        this.@configuration = config
    }

    private void validate(def config) {
        log.info("Validation for " + config)
        if(null == config || config.botName?.isEmpty()) throw new UnconfiguredBotException()
    }

    def persist(params){
        BotConfiguration config = BotConfiguration.get(1)
        if(null == config) config = new BotConfiguration()
        config.botName = params.botName
        config.channel = params.channel
        config.oauthKey = params.oauthKey
        config.save()
    }
}
