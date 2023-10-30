public class CustomerRecord {
    public string Name{get;set;}
    public String Phone{get;set;}
    public string FoodName{get;set;}
      public string Category{get;set;}
      public string CustomerMail{get;set;}
      public string Menu{get;set;}
    public Integer Quantity{get;set;}
  
    public PageReference CustomerRecord(){
        List <Menu__c> Menulist=[select Name,Category__c from 	Menu__c];
        CustomerOrder__c rentunitObj = new 	CustomerOrder__c();
        rentunitObj.Name = Name;
        rentunitObj.Customer_phone__c= Phone;
        rentunitObj.Food_Name__c=FoodName;
        rentunitObj.Quantity__c=Quantity;
        rentunitObj.Category__c=Category;
         rentunitObj.Customer_Mail__c=CustomerMail;
         
     	insert rentunitObj;
        return new PageReference('https://dev2755.dh77nvzsdcapd.amplifyapp.com/');

    }


}