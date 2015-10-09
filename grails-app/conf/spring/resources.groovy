// Place your Spring DSL code here
import net.tankertux.TwitchBot

beans = {
    twitchBot(TwitchBot)  { bean ->
        twitchGaugeService = ref("twitchGaugeService")
        nickname = ref('botName')
        channel = ref('channel')
    }

    host String, 'irc.twitch.tv'
    port Integer, 6667
    botName String, 'TankertuxBot'
    //TankertuxBot
    password String, "REDACTED"

    channel String, '#tankertux'
}
