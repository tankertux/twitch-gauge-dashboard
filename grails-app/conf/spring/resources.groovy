// Place your Spring DSL code here
import net.tankertux.TwitchBot

beans = {
    twitchBot(TwitchBot) { bean ->
        twitchGaugeService = ref("twitchGaugeService")
    }
}
