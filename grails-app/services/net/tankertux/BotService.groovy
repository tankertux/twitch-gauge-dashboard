package net.tankertux

import groovy.util.logging.Slf4j
import org.springframework.beans.BeansException
import org.springframework.context.ApplicationContext
import org.springframework.context.ApplicationContextAware;

@Slf4j
public class BotService implements ApplicationContextAware {

    def twitchBot
    def applicationContext

    def join() {
        def host = applicationContext.getBean('host')
        def port = applicationContext.getBean('port')
        def password = applicationContext.getBean('password')
        def channel = applicationContext.getBean('channel')
        if (twitchBot.isConnected()) {
            twitchBot.sendMessage('*Beep Boop* Gauge bot online')
        } else {
            twitchBot.connect(host, port, password)
            twitchBot.joinChannel(channel)
        }
    }

    def leave() {
        if (twitchBot.isConnected()) twitchBot.disconnect()
    }

    @Override
    void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.@applicationContext = applicationContext
    }
}
