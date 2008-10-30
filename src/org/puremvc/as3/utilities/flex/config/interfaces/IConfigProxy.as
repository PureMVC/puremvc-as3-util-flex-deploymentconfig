/*
  PureMVC Utility for AS3 / FLEX & AIR - Deployment Config
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.flex.config.interfaces
{
	import mx.rpc.IResponder;
	
	public interface IConfigProxy extends IResponder
	{
		function constructVO( ):IConfigVO;
		function retrieveConfig():void;
	}
}