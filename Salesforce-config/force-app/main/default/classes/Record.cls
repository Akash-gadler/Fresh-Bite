public class Record {

public static void sum(list<CustomerOrder__c> customer)
{
   List <Order__c> cc=new List <Order__c>();
    List <Menu__c> menuid = [Select id,Name from Menu__c];
    List <Menu__c> menulist =new list<Menu__c>();
     for(Menu__c mcc:menuid)
     {
         for(CustomerOrder__c c:customer)
         {
         if(mcc.Name == c.Food_Name__c )
           for(CustomerOrder__c acc:customer)
    		{
        cc.add(new Order__c(Menu__c=mcc.Id,Category__c=acc.Category__c,Customer_Mail__c=acc.Customer_Mail__c,Customer_Name__c=acc.Name,Customerp_hone_del__c=acc.Customer_phone__c,Food_Name__c=acc.Food_Name__c,Quantity__c=acc.Quantity__c));
   			 }
     }
     }
  	insert(cc);
    System.debug(cc);
    
    
}
}