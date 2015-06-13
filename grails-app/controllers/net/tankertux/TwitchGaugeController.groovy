package net.tankertux

import net.tankertux.TwitchGaugeService

class TwitchGaugeController {

	TwitchGaugeService twitchGaugeService
	
    def index() { 
		return [gauges: twitchGaugeService.listAll()]
	}
	
	def create(){
		render view:'/twitchGauge/create'
	}
}
