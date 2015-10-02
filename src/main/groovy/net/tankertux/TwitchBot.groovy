package net.tankertux

import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory
import org.jibble.pircbot.PircBot

public class TwitchBot extends PircBot {

    private transient Log logger  = LogFactory.getLog(getClass());

    TwitchGaugeService twitchGaugeService;

    @Override
    protected void onConnect() {
        logger.info("Connected!");
    }

    @Override
    protected void onMessage(String channel, String sender, String login, String hostname, String message) {
        def gauges = twitchGaugeService.findByKeyPhrase(message);
        if(gauges.size() > 0) logger.info String.format("Message received matching %s gauges", gauges.size())
        else logger.info "Incoming message matched no gauges"
        gauges.each { gauge ->
                gauge.invocations = gauge.invocations + 1
                gauge.save()
        }
    }

    public void setNickname(String name){
        super.setName(name);
    }
}
