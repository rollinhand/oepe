Hints on Eclipse
================

Errors while transforming the Maven project
-------------------------------------------
While calling mvn eclipse:eclipse on your project you encounter errors like the following:

	[ERROR] Failed to execute goal on project XXX: Could not resolve dependencies for project XXX
	
In short, the EAR project could not resolve the dependencies required for _Model_ and _Web_. The plugin, that creates the project files for Eclipse requires that you have called _mvn install_ before.
See [README.md] (README.md) for detailed instrauctions.


Facets are set to ADF 12.1.2
----------------------------
If you are using an embedded Glassfish server inside of Eclipse deployed ADF Essentials 12.1.3 on Glassfish 3.1
will be detected as ADF Essentials 12.1.2 by Eclipse. Therefore all Facets are automatically set to 12.1.2.

Make sure that you restart Eclipse after you have deployed ADF Essentials to the domain/lib-Folder.
Otherwise the libraries are not detected and Eclipse will always state, that your Runtime Environment
is configured for ADF Essentials 11.1.1.