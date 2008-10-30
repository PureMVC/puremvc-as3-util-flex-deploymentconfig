/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.utilities.flex.config.interfaces
{
	/**
	 * Configuration Value Object Interface.
	 * <P>
	 * Provides methods for setting the XML configuration
	 * (which triggers parsing of the deployment namespace),
	 * and validation of the configuration.</P> 
	 */
	public interface IConfigVO
	{
		/**
		 * Set the XML Configuration.
		 * <P>
		 * Extracts the deployment namespace so that subsequent
		 * calls to getters can use that namespace to retrieve 
		 * values from this XML configuration.</P> 
		 */
		function setConfig( config:XML ):void;
		
		/**
		 * Is the Configuration VO valid?
		 */
		function isValid():Boolean;
	}
}