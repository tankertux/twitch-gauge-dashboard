// Place your Spring DSL code here
import net.tankertux.TwitchBot

beans = {
    twitchBot(TwitchBot)  { bean ->
        twitchGaugeService = ref("twitchGaugeService")
        nickname = 'TankertuxBot'
    }

    host String, 'irc.twitch.tv'
    port Integer, 6667
    //TankertuxBot
    password String, "REDACTED"

    channel String, '#tankertux'
}
