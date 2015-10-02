package net.tankertux

class TwitchGauge {
	String label;
	boolean isActive = false
	String keyphrase;
	Integer capacity;
	Integer invocations = 0;

    static constraints = {
		label blank: false, unique: true
		keyphrase blank: false
		capacity min: 1
    }
	
	public String getWebSafeLabel(){
		return label.replaceAll('\\s+', '')
	}
	
	static transients = ['webSafeLabel']
}
