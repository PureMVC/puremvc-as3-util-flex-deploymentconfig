/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.flex.config.model
{
	import mx.rpc.Fault;
	import mx.rpc.IResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	
	import org.puremvc.as3.patterns.proxy.Proxy;
	import org.puremvc.as3.utilities.flex.config.interfaces.IConfigDelegate;
	import org.puremvc.as3.utilities.flex.config.interfaces.IConfigVO;
	
	/**
	 * Configuration Proxy.
	 * <P>
	 * Fetches the configuration, exposing it as an <code>IConfigVO</code>.</P>
	 * <P>
	 * Reports success and failure by sending <code>ConfigProxy.SUCCESS</code>
	 * or <code>ConfigProxy.FAILURE</code> notification.</P>
	 */
	public class ConfigProxy extends Proxy implements IResponder
	{
		public static const NAME:String = "ConfigProxy";
		
		public static const SUCCESS:String = NAME+"/result/success";
		public static const FAILURE:String = NAME+"/result/failure";
		
		/**
		 * Constructor. 
		 */
		public function ConfigProxy( configURL:String ) 
		{
	        super ( NAME, constructVO() );
	        delegate = new ConfigDelegate( configURL );
        }
     
     	/**
     	 * Get the Configuration VO
     	 */
     	public function get configVO():IConfigVO
     	{
     		return data as IConfigVO;
     	}
     	
		/**
		 * Retrieve the deployment configuration XML file.
		 */
		public function retrieveConfig( ):void
		{
			delegate.retrieveConfig( this );
		}
        
        /**
         * Construct the IConfigVO.
         * <P>
         * Override in your subclass and return an instance of 
         * your concrete <code>IConfigVO</code>.</P>
         */
        protected function constructVO():IConfigVO
        {
        	return new ConfigVO();
        }
        
        /**
         * Handle Configuration Service result.
         * <P>
         * Will send a SUCCESS notification if the result was good and the VO is valid.
         * Otherwise will send a <code>ConfigProxy.FAILURE</code></P>
         */
        public function result( event:Object ):void
        {
        	var resultEvent:ResultEvent = event as ResultEvent;
			configVO.setConfig( resultEvent.result as XML );
			if ( configVO.isValid() )
			{
				sendNotification( SUCCESS, configVO );
			} else {
				var faultMessage:Fault = new Fault( FAILURE, "Malformed Configuration","Please check your configuration file.");
				this.fault( new FaultEvent( FaultEvent.FAULT, false, false, faultMessage ) );
			}
        }

        /**
         * Handle Configuration Service fault.
         * <P>
         * Sends a notification with the <P>FaultEvent</P> 
         * for inspection. This allows the failure info
         * whether it was server error or malformed 
         * configuration to another actor for graceful handling.</P>
         */
        public function fault( event:Object ):void
        {
        	var faultEvent:FaultEvent = event as FaultEvent;
            sendNotification( FAILURE, faultEvent );
        }

		// The delegate for retrieving the configuration 
        private var delegate:IConfigDelegate
		
	}
}