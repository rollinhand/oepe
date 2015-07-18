README
======
This repository contains several useful scripts for working with Oracle Enterprise Pack
for Eclipse (OEPE).

setup
-----
Contains scripts to setup your environment for convenience Java development including
Maven support.


maven
-----
Contains an advanced and fixed _ADF Basic Archetype_ which works with OEPE 12.1.3.x and
a new archetype called _ADF Essentials Archetype_. The basic archetype is error prune and does
not work well together with newer OEPE installations.


To install the ADF Basic Archetype in this folder:

Go into ADF Basic Application Archetype:

1.	Run "mvn clean install"
2.	Run "mvn archetype:update-local-catalog"


To create an application based on this archetype simply run:

	mvn archetype:generate \
	-DarchetypeGroupId=com.oracle.adf.archetype \
	-DarchetypeArtifactId=adf-basic-application \
	-DarchetypeVersion=12.1.3-0-0 \

	
To install the ADF Essentials Archetype in this folder:

Go into ADF Essentials Application Archetype:

1.	Run "mvn clean install"
2.	Run "mvn archetype:update-local-catalog"


To create an application based on this archetype simply run:

	mvn archetype:generate \
	-DarchetypeGroupId=com.oracle.adf.archetype \
	-DarchetypeArtifactId=adf-essentials-application \
	-DarchetypeVersion=12.1.3-0-0 \

	
For further instructions please consult [OEPE Maven documentation] (http://docs.oracle.com/cd/E47843_06/12124/OEPUG/maven.htm#CHDEHABD).
If you encounter problems with one of the archetypes consult the document [ECLIPSE.md] (ECLIPSE.md).

Feedback
--------
If you want to honour my work leave me a message at _rollin dot hand at gmx dot de_ or make a donation at Paypal.
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="45HKTF44CZX36">
<input type="image" src="https://www.paypalobjects.com/de_DE/DE/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="Jetzt einfach, schnell und sicher online bezahlen – mit PayPal.">
<img alt="" border="0" src="https://www.paypalobjects.com/de_DE/i/scr/pixel.gif" width="1" height="1">
</form>