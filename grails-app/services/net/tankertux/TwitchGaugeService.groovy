package net.tankertux

import grails.transaction.Transactional

@Transactional
class TwitchGaugeService {

	@Transactional(readOnly = true)
    def listAll() {
		return Gauge.findAll()
    }
}
