public with sharing class RegistrationHandler_Google {

	global User createUser(Id portalId, Auth.UserData data){
      
        String googleName = data.email;
        User usr = [SELECT Id FROM User WHERE GoogleUsername__c = :googleName];
        return usr;
        
	      }
      
  global void updateUser(Id userId, Id portalId, Auth.UserData data) {}
    
}