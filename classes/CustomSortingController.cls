public class CustomSortingController {
 
   @AuraEnabled
   public static String fetchContact(String sortField, boolean isAsc) {
      /*
       * String sSoql = 'SELECT firstName, LastName, Department, MobilePhone ';
      sSoql += 'From contact';
      system.debug('sortField-->' + sortField);
 
      if (sortField != '') {
         sSoql += ' order by ' + sortField;
 
    // if isAsc is equal tp ture then set 'asc' order otherwise set 'desc' order.
         if (isAsc) {
            sSoql += ' asc';
         } else {
            sSoql += ' desc';
         }
      }
   // set record limit to query 
      sSoql += ' LIMIT 20';
 
      System.debug('@Developer -->sSoql:' + sSoql);
      list <contact> lstResult;
      try {
         system.debug('The query is' + sSoql);
         lstResult = Database.query(sSoql);
         List < contact > returnConList = new List < contact > ();
 
         for (contact c: lstResult) {
            returnConList.add(c);
          }
         return returnConList;
      } 
      catch (Exception ex) {
         // for handle Exception
         return null;
      }*/
String test='{"ListOfContact":[{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"},{"FirstName":"LeelaPavan","LastName":"23-June-2017","Department":"sucess","MobilePhone":"leelapavan.a@autorabit.com"}]}';
return  test;
   }
 
}