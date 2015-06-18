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
	
	def save(){
		twitchGaugeService.save([label:params.label, capacity: params.capacity, keyphrase: params.keyphrase])
		flash.message = "Creation successful!"
		redirect action:'index', controller: 'twitchGauge'
	}
}
