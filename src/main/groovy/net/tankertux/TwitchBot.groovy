package net.tankertux;

import org.apache.log4j.Logger;
import org.jibble.pircbot.PircBot;

public class TwitchBot extends PircBot {

    private transient Logger logger  = Logger.getLogger(getClass());
    TwitchGaugeService twitchGaugeService;

    @Override
    protected void onConnect() {
        logger.info("Connected!");
    }

    @Override
    protected void onMessage(String channel, String sender, String login, String hostname, String message) {
        def gauges = twitchGaugeService.findByKeyPhrase(message);
        gauges.each { gauge ->
                gauge.invocations = gauge.invocations + 1
                gauge.save()
        }
    }

    public void setNickname(String name){
        super.setName(name);
    }
}
