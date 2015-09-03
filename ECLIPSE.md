Hints on Eclipse
================

Errors while transforming the Maven project
-------------------------------------------
While calling mvn eclipse:eclipse on your project you encounter errors like the following:

	[ERROR] Failed to execute goal on project XXX: Could not resolve dependencies for project XXX
	
In short, the EAR project could not resolve the dependencies required for _Model_ and _Web_. The plugin, that creates the project files for Eclipse requires that you have called _mvn install_ before.
See [README.md] (README.md) for detailed instrauctions.