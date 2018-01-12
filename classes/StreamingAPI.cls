public class StreamingAPI {

    @AuraEnabled 
    public static void insertPushTopic(String name, String query){
        PushTopic pushTopic = new PushTopic();
        pushTopic.Name = name;//'InvoiceStatementUpdates';
        pushTopic.Query = query;//'SELECT Id, Name, Status__c, Description__c FROM Invoice_Statement__c';
        pushTopic.ApiVersion = 40.0;
        pushTopic.NotifyForOperationCreate = true;
        pushTopic.NotifyForOperationUpdate = true;
        pushTopic.NotifyForOperationUndelete = true;
        pushTopic.NotifyForOperationDelete = true;
        pushTopic.NotifyForFields = 'Referenced';
        insert pushTopic;
    }
}