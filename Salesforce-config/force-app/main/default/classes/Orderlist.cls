public class Orderlist {

@AuraEnabled
    public static list<CustomerOrder__c> fetchAccountrecord(){
        list<CustomerOrder__c> myrecords = [select Id,Name,Food_Name__c,Ready__c,Customer_phone__c,Customer_Mail__c,Quantity__c from CustomerOrder__c ];
        return myrecords;
    }
      @AuraEnabled
    public static void delAccount(CustomerOrder__c accountRec){
        delete accountRec;
    } 


}