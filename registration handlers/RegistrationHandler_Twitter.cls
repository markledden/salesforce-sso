global without sharing class RegistrationHandler_Twitter implements Auth.RegistrationHandler {

	global User createUser(Id portalId, Auth.UserData data){
  
        String twitterHandle = data.username;
        User usr = [SELECT Id FROM User WHERE TwitterHandle__c = :twitterHandle];
        return usr;
		
	}
  
	global void updateUser(Id userId, Id portalId, Auth.UserData data) {}
    
}