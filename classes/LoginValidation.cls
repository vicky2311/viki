public class LoginValidation {
	 @AuraEnabled
    public static String getValidateUser(String userName, String password){
        String returnString = 'Invalid';
        
        if(userName == null){
            returnString =  'User Name not exists';
        }else if(userName == 'jayashree@autorabit.com' ||
                userName == 'sindhumadhuri@autorabit.com'||
                userName == 'leela.p@autorabit.com'){
            User user=[SELECT id, TimeZoneSidKey from User where username = :userName LIMIT 1];        
            String uniqueID = getUniqueId(user.id, user.TimeZoneSidKey);
            returnString = 'Valid User.Unique ID<'+uniqueID+ '>';
        }
        //if(user.IsActive){ }
        return returnString;  
    }
     @AuraEnabled
    public static String getUniqueID(String userID, String uTimeZone){
        Organization org=[SELECT Id from Organization LIMIT 1];
        String dfFormat = datetime.now().format('yyyy-MM-dd H:mm:ss');
        Datetime df = toUtc(uTimeZone, dfFormat);
        long dfTime = df.getTime();
        String uniqueID = org.Id + '' + userID + '' + dfTime;
        System.debug('getUniqueID:orgId'+org.Id+': userID:'+userID+':dfTime:'+dfTime+'<uniqueID>:'+uniqueID);
        return uniqueID;
    }
     
    public static DateTime toUtc(string customerTimeZone, string timeZoneString) {
        DateTime customerDateTime = DateTime.valueofGmt(timeZoneString);
    	TimeZone ctz = TimeZone.getTimeZone(customerTimeZone);
        integer offsetToUtc = ctz.getOffset(customerDateTime);
        DateTime utcDateTime = customerDateTime.addMinutes(-1 * offsetToUtc / (1000 * 60));
        // Reverse check as getOffset will be working against UTC. We can't create an instance in the customers time zone.
        // May need to use the revised UTC offset once we can actaully work from UTC.
        integer utcOffset = ctz.getOffset(utcDateTime);
        //DateTime revisedCustomerDateTime = utcDateTime.addMinutes(utcOffset / (1000 * 60));
        // Exercise for the reader, check what occurs with the other DST transition
        if(offsetToUtc != utcOffset) {
            System.debug(LoggingLevel.Warn, 'Revised UTC offset to ' + utcOffset);
            utcDateTime = customerDateTime.addMinutes(-1 * utcOffset / (1000 * 60));
        }
        System.debug('Converted ' + customerDateTime + ' to ' + utcDateTime);
        return utcDateTime;
    }
     @AuraEnabled
    public static String getSaveUser(String userName, String password){
         String jsonInput = '{\n' +
    		' "username": "'+userName+'",\n' +
    		' "password": "'+password+'"\n' +
    		'}';
        
       String postBody = JSON.serialize(jsonInput);
       System.debug(postBody);
       String returnUser = (String) JSON.deserializeUntyped(postBody);       
       return  userName + 'is saved successfully.';      
    }
   
    
}