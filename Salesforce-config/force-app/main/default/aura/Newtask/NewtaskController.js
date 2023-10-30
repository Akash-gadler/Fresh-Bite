({
    fetchAccounts: function (component, event, helper) {
        var act = [
            
            { label: 'Delivered', name:'delete'}
        ]; 
    component.set('v.columns', [
            {label: 'Customer name', fieldName: 'Name', type: 'text'},
            {label: 'Food Name', fieldName: 'Food_Name__c', type: 'text'},
            {label: 'Quantity', fieldName: 'Quantity__c', type: 'text'},
         {label: 'Customer Mail', fieldName: 'Customer_Mail__c', type: 'email'},
         {label: 'Customer phone', fieldName: 'Customer_phone__c', type: 'phone'},
        {label: 'Ready', fieldName: 'Ready__c', type: 'boolean'},
        	{type: 'action',label: 'Delivered',typeAttributes:{rowActions: act }}
        ]);
      
         helper.pullData(component);
    
    },
     handleRowAction: function (cmp, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');

        switch (action.name) {
            case 'show_details':
                alert('Showing Details: ' + JSON.stringify(row));
                break;
            case 'delete':
              	  helper.deleteRecord(cmp, event);
                break;
             
        }
    }
})