## [PureMVC](http://puremvc.github.com/) [ActionScript 3](https://github.com/PureMVC/puremvc-as3-standard-framework/wiki) Utility: Deployment Config (Flex/AIR)
The Deployment Config utility offers a simple solution to the problem of retrieving configuration and distributing it throughout a PureMVC application. Support is provided for multiple deployment environments, such that a single configuration file can hold the unique configuration settings for any number of deployment environments. A single environment is selected by changing the value of a single tag in the XML to point to the desired configuration. Standard and MultiCore versions are included.

* [Discussion](http://forums.puremvc.org/index.php?topic=795.0)

## API Docs
* [Standard Version](http://darkstar.puremvc.org/content_header.html?url=http://puremvc.org/pages/docs/AS3/Utility_AS3_Flex_DeploymentConfig/asdoc-standard/&desc=PureMVC%20Standard%20Docs%20AS3%20Utility:%20Deployment%20Config)
* [MultiCore Version](http://darkstar.puremvc.org/content_header.html?url=http://puremvc.org/pages/docs/AS3/Utility_AS3_Flex_DeploymentConfig/asdoc-multicore/&desc=PureMVC%20MultiCore%20Docs%20AS3%20Utility:%20Deployment%20Config)

## Status
Production - [Version 1.0](https://github.com/PureMVC/puremvc-as3-util-flex-deploymentconfig/blob/master/VERSION)

## Platforms / Technologies
* [ActionScript 3](http://en.wikipedia.org/wiki/ActionScript)
* [Flash](http://en.wikipedia.org/wiki/Adobe_flash)
* [Flex](http://en.wikipedia.org/wiki/Adobe_Flex)
* [AIR](http://en.wikipedia.org/wiki/Adobe_AIR)

## Features in 1.0
* XML Namespaces are used to represent the same values for multiple deployment environments.
* Developer creates an XML configuration file based on the [example](https://github.com/PureMVC/puremvc-as3-util-flex-deploymentconfig/tree/master/example), and a corresponding IConfigVO (usually by subclassing ConfigVO).
* You add members to your concrete IConfigVO that expose the values from the selected deployment namespace in your XML configuration file. 
* The ConfigVO class offers a setConfig method that stores the XML configuration and extracts the deployment Namespace.
* ConfigVO also has a validate method that checks that the deployment namespace was defined config file. You can override this and do your own validation to make sure that additionally, all the configuration values are defined for your deployment namespace. 
* The built-in ConfigProxy and ConfigDelegate classes are used to fetch the XML configuration. 
* The ConfigProxy only need be extended in order to construct an instance of your concrete IConfigVO.

## License
* PureMVC Utility for AS3 / FLEX & AIR - Deployment Config - Copyright © 2007-08 Cliff Hall
* PureMVC - Copyright © 2007-2012 Futurescale, Inc.
* All rights reserved.

* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
  * Neither the name of Futurescale, Inc., PureMVC.org, nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.