@isTest
public class TestDynamicSOQL {
    @isTest
    public static void runQuery(){
        Case c1 = new Case();
        Case c2 = new Case();
        Case c3 = new Case();
        insert c1;
        insert c2;
        insert c3;
        
        DynamicSOQL.FlowInputs inputItem = new DynamicSOQL.FlowInputs();
        List<DynamicSOQL.FlowInputs> input = new List<DynamicSOQL.FlowInputs>();
        inputItem.queryString = 'SELECT Id FROM Case';
        input.add(inputItem);
        
        Test.startTest();
        List<List<Case>> outCase = DynamicSOQL.runQuery(input);
        List<Case> compressed = new List<Case>();
        for(List<Case> caseList : outCase){
            compressed.addAll(caseList);
        }
        Test.stopTest();
        Assert.isTrue(compressed.size() == 3);
        
        
        
    }
    
}