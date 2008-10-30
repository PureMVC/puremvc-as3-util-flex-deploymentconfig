/*
 Example Deployment Configuration Proxy. 
 Extends ConfigProxy to override construction of ConfigVO and use MyAppConfigVO
 */
package com.me.myapp.model
{
	import com.me.myapp.model.vo.MyAppConfigVO;
	
	import org.puremvc.as3.utilities.flex.config.interfaces.IConfigVO;
	import org.puremvc.as3.utilities.flex.config.model.ConfigProxy;

	public class MyAppConfigProxy extends ConfigProxy
	{
		override protected function constructVO():IConfigVO
		{
			return new MyAppConfigVO();
		}
		
	}
}