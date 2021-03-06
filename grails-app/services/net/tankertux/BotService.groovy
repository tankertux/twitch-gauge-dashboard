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

    def persist(params){
        configuration = new BotConfiguration()
        configuration.botName = params.botName
        configuration.channel = params.channel
        configuration.oauthKey = params.oauthKey
        configuration.save()
    }

    def configs(){
        return BotConfiguration.findAll()
    }

}
