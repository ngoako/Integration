public with sharing class JSONExamples {
    public static void jsonexample1(){
        staticResource st = [SELECT id, name, body FROM StaticResource WHERE Name =: 'JsonFormat' limit 1]; //Data is received from system

        String body = st.Body.toString(); // converting static resource data to string 
        System.debug('Static Resource Body : '+body);

        JSONParser parser = JSON.createParser(st.Body.toString());
        parser.nextToken();
        System.debug(parser.getCurrentToken());
    } 
}