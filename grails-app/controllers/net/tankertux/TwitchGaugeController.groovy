package net.tankertux

import grails.converters.JSON
import net.tankertux.TwitchGaugeService

class TwitchGaugeController {

	private static final int BASE_SOCKETIO_PORT = 37010

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
	
	def show(Long id){
		[gauge: twitchGaugeService.get(id)]
	}
	
	def invocations(Long id){
		render text: twitchGaugeService.get(id).invocations
	}
	
	def increment(Long id){
		def gauge = twitchGaugeService.get(id)
		gauge.invocations = gauge.invocations + 1
		gauge.save()
	}
}
