package net.tankertux

class BotConfigurationService {
    BotConfiguration configuration

    def fetch() {
        return configuration
        BotConfiguration.get(1)
    }
}
