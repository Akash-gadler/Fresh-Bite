({  
    pullData:function(component){
        
        var action=component.get("c.fetchAccountrecord");       
        action.setCallback(this,function(e){
           
            if(e.getState()=='SUCCESS'){
                var results=e.getReturnValue();                 
                if(results.length>0){
                    component.set('v.acctList', results);                                                           
                }
                else{
                    component.set('v.acctList', []);                                        
                }
            }
            else{
                this.showToast("ERROR","error",JSON.stringify(e.getError()));   
            }
        });
        $A.enqueueAction(action);
    },
    

    deleteRecord : function(component, event) {
      
        var accountRec = event.getParam('row');        
        var action = component.get("c.delAccount");
        action.setParams({
            "accountRec": accountRec
        });
        action.setCallback(this, function(response) {
                        
            if (response.getState() === "SUCCESS" ) {
                var rows = component.get('v.acctList');
                var rowIndex = rows.indexOf(accountRec);
                rows.splice(rowIndex, 1);
                component.set('v.acctList', rows);
                this.showToast("Success!","success","The Order has been Delivered successfully.");
            }
            else{
                this.showToast("ERROR","error",JSON.stringify(response.getError())); 
            }
        });
        $A.enqueueAction(action);
    },
    
    showToast:function(title,type,message){
        var toastEvent = $A.get("e.force:showToast");
        if(toastEvent){
            toastEvent.setParams({"title": title,"type": type,"message": message}).fire();
        }
        else{
            alert(message);
        }
    },
 })