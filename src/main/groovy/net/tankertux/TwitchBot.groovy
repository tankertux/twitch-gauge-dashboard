package net.tankertux

import groovy.util.logging.Slf4j
import org.jibble.pircbot.PircBot

@Slf4j
public class TwitchBot extends PircBot {

    TwitchGaugeService twitchGaugeService;

    @Override
    protected void onConnect() {
        super.onConnect()
        log.debug("Connected!")
        sendMessage("#tankertux", "*Beep Boop* Gauge bot connected")
    }

    @Override
    protected void onMessage(String channel, String sender, String login, String hostname, String message) {
        boolean debug = log.isDebugEnabled()
        if(debug)log.debug("Finding gauges")
        def gauges = twitchGaugeService.findActiveByKeyPhrase(message);
        if(debug){
            log.debug("Found " + gauges)
            if(gauges.size() > 0) log.debug String.format("Message received matching %s gauges", gauges.size())
            else log.debug "Incoming message matched no gauges"
        }
        gauges.each { gauge ->
            gauge.invocations = gauge.invocations + 1
            TwitchGauge.withTransaction {
                gauge.save()
            }
        }
    }

    public void setNickname(String name){
        super.setName(name);
    }
}
