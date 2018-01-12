public class dfgd {
      @AuraEnabled
    public static String getBackupHistory () {
    String url = 'http://54.202.231.145:8080/ARVault/arvault/arvaultconnector/Naresh';
        HttpRequest req = new HttpRequest();
        Http http = new Http();
        req.setMethod('GET');    
        req.setEndpoint(url);
        HTTPResponse res = http.send(req);
        return res.getBody(); 
    }
}