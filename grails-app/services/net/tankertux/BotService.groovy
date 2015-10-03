package net.tankertux

import org.springframework.beans.BeansException
import org.springframework.context.ApplicationContext
import org.springframework.context.ApplicationContextAware;

public class BotService implements ApplicationContextAware {

    TwitchBot twitchBot
    def applicationContext

    def join(){
        def host = applicationContext.getBean('host')
        def port = applicationContext.getBean('port')
        def password = applicationContext.getBean('password')
        def channel = applicationContext.getBean('channel')
        leave()
        twitchBot.connect(host, port, password)
        twitchBot.joinChannel(channel)
    }

    def leave(){
        if(twitchBot.isConnected()) twitchBot.disconnect()
    }

    @Override
    void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.@applicationContext = applicationContext
    }
}
