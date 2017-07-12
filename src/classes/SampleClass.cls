public with sharing class SampleClass {
    @AuraEnabled
    public static List<Account> getAccountData() {        
        return [SELECT account.name, (SELECT contact.name FROM account.contacts) FROM account];
    }
}