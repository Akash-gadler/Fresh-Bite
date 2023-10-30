public class Customerrec {
  public string Name{get;set;}
  public String Phone{get;set;}
  public String Email{get;set;}
  public String Areyou{get;set;}
  
  
    public PageReference Customerrec(){
      
       Customer_info__c  infoObj = new 	Customer_info__c();
        infoObj.Name__c= Name;
        infoObj.Email_Id__c= Email;
        infoObj.Phone_no__c=Phone;
        infoObj.Are_you__c=Areyou;
         
     	insert infoObj;
        return new PageReference('https://dev2755.dh77nvzsdcapd.amplifyapp.com/');

    }
}