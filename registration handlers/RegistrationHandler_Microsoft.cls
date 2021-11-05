public with sharing class RegistrationHandler_Microsoft {

	global User createUser(Id portalId, Auth.UserData data){
        
        String unique_name = (String) data.attributeMap.get('unique_name');
        	        
        User usr = [SELECT Id FROM User WHERE email = :unique_name];
        return usr;

       	}
     
  	global void updateUser(Id userId, Id portalId, Auth.UserData data) {}
    
}