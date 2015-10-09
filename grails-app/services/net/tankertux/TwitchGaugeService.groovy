package net.tankertux

import grails.transaction.Transactional

@Transactional
class TwitchGaugeService {

    def listAll() {
		return TwitchGauge.findAll()
    }
	
	def save(params){
		new TwitchGauge(params).save()
	}
	
	def get(id){
		return TwitchGauge.findById(id)
	}

	def findActiveByKeyPhrase(phrase){
        return TwitchGauge.findAllByIsActiveAndKeyphrase(true, phrase)
    }


}
