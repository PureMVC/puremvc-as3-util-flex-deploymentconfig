/*
 Example Deployment Configuration VO.
 Exposes the values from the example myapp-config.xml file
 */
package com.me.myapp.model.vo
{
	import org.puremvc.as3.utilities.flex.config.model.ConfigVO;
	
	public class MyAppConfigVO extends ConfigVO
	{
		
		/**
		 * Check that config is valid.
		 */		
		override public function isValid():Boolean
		{
			// make sure deployment namespace is populated
			if ( !super.isValid() ) return false;

			// make sure all fields are populated
			return ( appName 			!= null &&
					 appVersion 		!= null &&
					 loginService 		!= null &&
					 userDataService 	!= null
					);
		}

		/**
		 * Get the App Name for the selected deployment environment.
		 */
		public function get appName():String
		{
			return config.nsDeploy::appName;
		}

		/**
		 * Get the App Version for the selected deployment environment.
		 */
		public function get appVersion():String
		{
			return config.nsDeploy::appVersion;
		}

		/**
		 * Get the login service URL for the selected deployment environment.
		 */
		public function get loginService():String
		{
			return config.nsDeploy::loginService;
		}
		
		/**
		 * Get the user data service URL for the selected deployment environment.
		 */
		public function get userDataService():String
		{
			return config.nsDeploy::userDataService;
		}
		
	}
}