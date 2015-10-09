package net.tankertux;

public class BotConfiguration {
    String botName
    String oauthKey
    String host
    Integer port
    String channel

    static constraints = {
        botName blank: false
        oauthKey blank: false
        host blank: false
        port min:0, max: 65535
        channel blank: false
    }
}
