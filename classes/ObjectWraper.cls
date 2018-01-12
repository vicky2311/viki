public with sharing class ObjectWraper
{
	@AuraEnabled
    public String id {get; set;}
    
    @AuraEnabled
    public String name {get; set;}
    
    @AuraEnabled
    public Integer totalfields {get; set;}    
    
    @AuraEnabled
    public List<String> excludedFields {get; set;}
}