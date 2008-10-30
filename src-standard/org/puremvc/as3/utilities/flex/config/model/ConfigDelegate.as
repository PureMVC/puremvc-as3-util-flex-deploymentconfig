/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.flex.config.model
{
	import mx.rpc.IResponder;
	
	import org.puremvc.as3.utilities.flex.config.interfaces.IConfigDelegate;
	
	public class ConfigDelegate implements IConfigDelegate
	{
		import mx.rpc.http.HTTPService;
		
		/**
		 * Configuration Delegate.
		 * <P>
		 * Handles communication with the server to retrive 
		 * the deployment configuration file.</P>
		 */
	    public function ConfigDelegate( url:String )
	    {
	        service.url 			= url;
	        service.resultFormat 	= "e4x";
	        service.method			= "GET";
	    }
		
		/**
		 * Retrieve the configuration.
		 * <P>
		 * Sets the responder to recieve the result or fault.</P>
		 */			
	    public function retrieveConfig( responder:IResponder ) : void 
	    {
	        service.send().addResponder( responder );
	    }

	    private var service 	: HTTPService = new HTTPService();
	   
	}
}