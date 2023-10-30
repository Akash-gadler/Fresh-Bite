trigger RecordTrigger on CustomerOrder__c (after insert) {
	Record.sum(trigger.new);
    System.debug(trigger.new);
}