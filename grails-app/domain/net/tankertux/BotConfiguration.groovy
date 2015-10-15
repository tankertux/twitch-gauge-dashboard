package net.tankertux;

public class BotConfiguration implements Serializable {
    String botName
    String oauthKey
    String host = 'irc.twitch.tv'
    Integer port = 6667
    String channel

    static mapping = {
        id composite: ['botName', 'channel']
    }

    static constraints = {
        botName blank: false
        oauthKey blank: false
        host blank: false
        port min:0, max: 65535
        channel blank: false
    }

    @Override
    String toString() {
        return "$botName on $channel";
    }

    @Override
    boolean equals(Object obj) {
        return this.toString().equals(obj.toString())
    }

    @Override
    int hashCode() {
        return this.toString().hashCode()
    }
}
