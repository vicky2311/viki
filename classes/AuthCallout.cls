public class AuthCallout {

   public String baseURL = 'http://54.202.231.145:8080/ARVault';
    
   public String basicAuthCallout(String orgName, String userName, String pwd){
     
     String userInfo = '{"nmLable":"'+orgName+'", "sfNmUser":"'+userName+'","sfTxPwd":"'+pwd+'"}';
	 String serviceURL = baseURL + '/addSforgEnvi';
    
     Map<String, Object> responseList = generateResponse(serviceURL, userInfo);
     String responseStr = (String) responseList.get('idSforg');  
     return responseStr;  
   }

    public List<Object> getSfObjects(String sfOrgID){
        String jsonInput = '{"sfOrgId": "'+sfOrgID+'"}';
        String serviceURL = baseURL + '/getSfObjects';
        Map<String, Object> responseList = generateResponse(serviceURL, jsonInput);
        List<Object> objList = (List<Object>) responseList.get('objects');
        return objList;    
    }
    
    public List<Object> getSfFields(String sfOrgID, String sfObjName){
         String jsonInput = '{"sfOrgId": "'+sfOrgID+'", "sfObjName": "'+sfObjName+'"}';
         String serviceURL = baseURL + '/getSfFields';
         Map<String, Object> responseList = generateResponse(serviceURL, jsonInput);
         List<Object> objList = (List<Object>) responseList.get('fields');
     	 return objList;
    }
    
        
    public Map<String, Object> generateResponse(String serviceURL, String jsonInput){
    	
        
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