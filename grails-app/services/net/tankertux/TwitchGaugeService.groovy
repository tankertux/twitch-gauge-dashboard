package net.tankertux

import grails.transaction.Transactional

@Transactional
class TwitchGaugeService {

	@Transactional(readOnly = true)
    def listAll() {
		return TwitchGauge.findAll()
    }
	
	def save(params){
		new TwitchGauge(params).save()
	}
	
	def get(id){
		return TwitchGauge.findById(id)
	}

	@Transactional(readOnly = true)
	def findByKeyPhrase(phrase){
        return TwitchGauge.findByKeyphraseILike(phrase)
    }
}
