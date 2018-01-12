public class BackupHistoryService {
	@AuraEnabled
        public static String getBackupHistory (Integer top) {
        /*String url = 'https://th-yelp-locator.herokuapp.com/search?address=' + lat +','+ lon + '&term=' + EncodingUtil.urlEncode(searchTerm, 'UTF-8');
        HttpRequest req = new HttpRequest();
        Http http = new Http();
        req.setMethod('GET');    
        req.setEndpoint(url);
        HTTPResponse res = http.send(req);
        return res.getBody();   */
        //String res = '{"rows":[{"vals":[{"val":"Salesforce","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Salesforce.com","cssClass":""},{"val":"8602229632","cssClass":"responsiveHide"}]},{"vals":[{"val":"Microsoft","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@microsoft.com","cssClass":""},{"val":"8602283222","cssClass":"responsiveHide"}]},{"vals":[{"val":"SAP","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@SAP.com","cssClass":""},{"val":"8600942222","cssClass":"responsiveHide"}]},{"vals":[{"val":"Google","cssClass":""},{"val":"SFO","cssClass":""},{"val":"info@Google.com","cssClass":""},{"val":"8602479222","cssClass":"responsiveHide"}]}],"headers":[{"title":"Client Name","isSortable":false,"dataType":"","cssClass":""},{"title":"Address","isSortable":false,"dataType":"","cssClass":""},{"title":"Email","isSortable":false,"dataType":"","cssClass":""},{"title":"Mobile","isSortable":false,"dataType":"","cssClass":"responsiveHide"}]}';
   //   String res ='{"rows":[{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1000,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1001,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1002,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1003,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1004,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1005,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1006,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1007,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1008,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"},{"id":1232,"date":"23-June-2017","status":"sucess","triggerdby":"leelapavan.a@autorabit.com"}],"headers":[{"title":"id","isSortable":false,"dataType":"","cssClass":""},{"title":"date","isSortable":false,"dataType":"","cssClass":""},{"title":"status","isSortable":false,"dataType":"","cssClass":"responsiveHide"},{"title":"triggerdby","isSortable":false,"dataType":"","cssClass":"responsiveHide"}]}, {"id":"1001","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"}'
//;      
         String res = '{"activityhistory":[{"id":"1001","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1025","date":"26-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1002","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1003","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1004","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1005","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1006","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1007","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1008","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"},{"id":"1009","date":"23-June-2017","records":"200","objectscount":"2","triggeredby":"leelapavan.a@autorabit.com"}]}';
            return res;
    }
    @AuraEnabled
        public static String getObjectsList() {
            String res = '{"objects":[{"id":"1001","name":"Accounts"},{"id":"1002","name":"BusinessProcess"},{"id":"1003","name":"Cases"},{"id":"1001","name":"DashBoards"},{"id":"1001","name":"Dataload"}, {"id":"1001","name":"Events"},{"id":"1001","name":"Stories"},{"id":"1001","name":"FlexiPages"}, {"id":"1001","name":"AutComponents"}, {"id":"1001","name":"ApexClass"},{"id":"1001","name":"Pages"},{"id":"1001","name":"StaticResources"}]}';
            return res;
        }
     @AuraEnabled
        public static String getOrgsList() {
            String res = '{"Orgslist":[{"id":"1001","name":"Production","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1002","name":"Development","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1003","name":"Integration","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1004","name":"Dev1","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":false},{"id":"1005","name":"Dev2","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1006","name":"QA1","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1007","name":"QA2","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1008","name":"IntegraionQa","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1009","name":"Prod","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1010","name":"QAMerge","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true},{"id":"1011","name":"DevQa","mapped":"Backup9013","recentbackup":"26th-June 2017","isauthsucess":true}]}';   
            return res;
        }
      @AuraEnabled
        public static String getsObjectsList() {
           String res ='{"objects":[{"name":"Account","id":"1111","fields":[{"label":"aaaa","apiname":"aaaa","mask":true,"encrypt":true,"excluded":true},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":true},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":true},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Case","id":"2134","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Event","id":"1445","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Service","id":"5643","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Opurtunity","id":"7667","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Signal","id":"9999","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Yse","id":"4573","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0},{"name":"Fleo","id":"8888","fields":[{"label":"aaaa","apiname":"aaaa","mask":false,"encrypt":false,"excluded":false},{"label":"bbb","apiname":"bbbb","mask":false,"encrypt":false,"excluded":false},{"label":"ccc","apiname":"ccc","mask":false,"encrypt":false,"excluded":false},{"label":"ddd","apiname":"ddd","mask":false,"encrypt":false,"excluded":false},{"label":"eee","apiname":"eeee","mask":false,"encrypt":false,"excluded":false}],"excludedcount":0}]}';
return res;
        }
    
   public static String baseURL = 'http://54.202.231.145:8080/ARVault';
   @AuraEnabled 
   public static String basicAuthCallout(String orgTitle, String userName, String password){
     
     String userInfo = '{"nmLable":"'+orgTitle+'", "sfNmUser":"'+userName+'","sfTxPwd":"'+password+'"}';
	 String serviceURL = baseURL + '/addSforgEnvi';
     System.debug(userInfo);
     Map<String, Object> responseList = generateResponse(serviceURL, userInfo);
     String responseStr = (String) responseList.get('idSforg'); 
     System.debug('responseStr:'+responseStr);  
     return responseStr;  
   }

    public static List<Object> getSfObjects(String sfOrgID){
        String jsonInput = '{"sfOrgId": "'+sfOrgID+'"}';
        String serviceURL = baseURL + '/getSfObjects';
        Map<String, Object> responseList = generateResponse(serviceURL, jsonInput);
        List<Object> objList = (List<Object>) responseList.get('objects');
        return objList;    
    }
    
    public static List<Object> getSfFields(String sfOrgID, String sfObjName){
         String jsonInput = '{"sfOrgId": "'+sfOrgID+'", "sfObjName": "'+sfObjName+'"}';
         String serviceURL = baseURL + '/getSfFields';
         Map<String, Object> responseList = generateResponse(serviceURL, jsonInput);
         List<Object> objList = (List<Object>) responseList.get('fields');
     	 return objList;
    }
    
        
    public static Map<String, Object> generateResponse(String serviceURL, String jsonInput){
    	
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint(serviceURL);
        req.setMethod('POST');
        req.setHeader('Content-type', 'application/json');
        
        // Specify the required user name and password to access the endpoint
        // As well as the header and header information
        
        String username = 'f939bec89dc549d9bb2a5ef164ac0eb5';
        String password = 'Naresh@7';
        
        Blob headerValue = Blob.valueOf(username + ':' + password);
        String authorizationHeader = 'Basic ' + EncodingUtil.base64Encode(headerValue);
        req.setHeader('Authorization', authorizationHeader);
        req.setBody(jsonInput);
        
        // Create a new http object to send the request object
        // A response object is generated as a result of the request  
        
        Http http = new Http();
        HTTPResponse res = http.send(req);
        Map<String, Object> responseObjects = new Map<String, Object>();
        if(res.getStatusCode() == 200)
        { 
            system.debug('Authentication success!!!' + res);
            System.debug(res.getBody());
            responseObjects = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());                         
        } else
        {system.debug('Authentication failed!!!' + res + res.getStatusCode());
  			responseObjects = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());                               	
        }
        return responseObjects;
    } 
}