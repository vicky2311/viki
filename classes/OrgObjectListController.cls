public class OrgObjectListController{
	public List<Objects> Objects;
	class Objects {
		public String name;	
		public String id;	
		public List<String> excluded;
		public Integer fieldscount;
	}
	
	public static OrgObjectListController parse(String json){
		return (OrgObjectListController) System.JSON.deserialize(json, OrgObjectListController.class);
	}
  @AuraEnabled
    public static OrgObjectListController findAll() {
      String json=		'{'+
		'"Objects":['+
		'{'+
		'  "name":"Account",'+
		'  "id":"1111",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Case",'+
		'  "id":"2134",'+
		'  "excluded":["fieldname","fieldname","fieldname"],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Event",'+
		'  "id":"1445",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Service",'+
		'  "id":"5643",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Opurtunity",'+
		'  "id":"7667",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Signal",'+
		'  "id":"9999",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Yse",'+
		'  "id":"4573",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Fleo",'+
		'  "id":"8888",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'}'+
		']'+
		'}';
      OrgObjectListController obj = parse(json);
         System.debug(obj);
      return obj;
    }
	public static void testParse() {
		String json=		'{'+
		'"Objects":['+
		'{'+
		'  "name":"Account",'+
		'  "id":"1111",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Case",'+
		'  "id":"2134",'+
		'  "excluded":["fieldname","fieldname","fieldname"],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Event",'+
		'  "id":"1445",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Service",'+
		'  "id":"5643",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Opurtunity",'+
		'  "id":"7667",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Signal",'+
		'  "id":"9999",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Yse",'+
		'  "id":"4573",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'},'+
		'{'+
		'  "name":"Fleo",'+
		'  "id":"8888",'+
		'  "excluded":[],'+
		'  "fieldscount": 8'+
		'}'+
		']'+
		'}';
		OrgObjectListController obj = parse(json);
        System.debug(obj);
	}
}