public with sharing class DE_ResourcesDemo {
    @AuraEnabled(cacheable=true)
    public static list<DE_ResourceLink__c> getResources(string category){
        try {
            return [select Id,Name,Link__c,Label__c,Icon__c,Image_URL__c,Date__c,Description__c from DE_ResourceLink__c where Category__c=:category];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}
