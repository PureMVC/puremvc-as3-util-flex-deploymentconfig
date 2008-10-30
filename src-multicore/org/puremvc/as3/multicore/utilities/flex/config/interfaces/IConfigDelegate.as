/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.utilities.flex.config.interfaces
{
	import mx.rpc.IResponder;
	
	public interface IConfigDelegate
	{
		function retrieveConfig( responder:IResponder ):void;
	}
}