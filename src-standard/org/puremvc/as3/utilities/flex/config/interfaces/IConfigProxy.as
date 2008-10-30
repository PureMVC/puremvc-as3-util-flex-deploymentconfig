/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.flex.config.interfaces
{
	import mx.rpc.IResponder;
	
	/**
	 * Configuration Proxy Interface.
	 * <P>
	 * Usually you subclass the <code>ConfigProxy</code> abstract 
	 * implementation class and override one or both of <code>constructVO</code> 
	 * or <code>constructDelegate</code> to use your own VO 
	 * (and optionally your own delegate, though it's rarely needed).
	 * </P>
	 */
	public interface IConfigProxy extends IResponder
	{
		/**
		 * Construct the IConfigVO.
		 */
		function constructVO( ):IConfigVO;
		
		/**
		 * Construct the IConfigDelegate.
		 */
		function constructDelegate( ):IConfigDelegate;
		
		/**
		 * Retrieve the XML Configuration.
		 */
		function retrieveConfig():void;
	}
}