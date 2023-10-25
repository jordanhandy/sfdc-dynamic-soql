public with sharing class DynamicSOQL {
	@InvocableMethod(label='Custom SOQL Query' description='Create a Custom SOQL Query that GETs can\'t yet do' category='Support Tools')
    public static List<List<SObject>> runQuery(List<FlowInputs> input){
        String queryString = input.get(0).queryString;
        List<List<SObject>> returnList = new List<List<SObject>>();
        List<SObject> objectList = new List<SObject>();
        objectList = Database.query(queryString);
        returnList.add(objectList);
        return returnList;
    }
    public class FlowInputs{
        @InvocableVariable(label='Query String' required=true description='Query String')
        public String queryString;
    }
}