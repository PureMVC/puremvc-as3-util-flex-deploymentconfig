/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.flex.config.model
{
	import org.puremvc.as3.utilities.flex.config.interfaces.IConfigVO;

	/**
	 * Configuration Value Object.
	 * <P>
	 * Abstract implementation. Subclass and add your own field getters and validation.</P>
	 */
	public class ConfigVO implements IConfigVO
	{
		
		/**
		 * Set the XML Configuration.
		 * <P>
		 * Extracts the deployment namespace so that subsequent
		 * calls to getters can use that namespace to retrieve 
		 * values from this XML configuration.</P> 
		 */
		public function setConfig( config:XML ):void
		{
			this.config = config;
			if ( config.nsConfig::deploy ) {
				nsDeployName = config.nsConfig::deploy;
				nsDeploy = new Namespace(nsDeployName, nsDeployName);
			}
		}
		
		/**
		 * Is the configuration valid?
		 * <P>
		 * Checks to see that the deployment namespace has been 
		 * successfully extracted from the configuration.</P>
		 * <P>
		 * OPTIONAL: To do customized validation, override <code>isValid</code>in 
		 * your subclass, and if <code>(super.isValid() == true)</code>, 
		 * then conduct your own validation and return an appropriate 
		 * value.</P>
		 * 
		 * @return false if configuration is malformed or has not been set.
		 */
		public function isValid():Boolean
		{
			return (nsDeploy != null);
		}
		
		/**
		 *  The XML Configuration.
		 */
		protected var config:XML;
		/**
		 *  The deployment <code>Namespace</code>.
		 */		
		protected var nsDeploy:Namespace;
		/**
		 *  The name of the deployment <code>Namespace</code>.
		 */
		protected var nsDeployName:String;
		/**
		 * The configuration <code>Namespace</code>.
		 */
		protected var nsConfig:Namespace = new Namespace('config', 'config');

	}
}