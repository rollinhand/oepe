#!/bin/sh
# 	Simple script to synchronize Oracle Maven artifacts with local repository
#
#	Author: Björn Berg, bjoern.berg@gmx.de
#	Date:	2015-05-03

# -------------------------------------------------------------------
# Check if needed variables exist
# ------------------------------------------------------------------- 
if [ $ORACLE_HOME -eq ""]; then
	echo "ORACLE_HOME not set.";
	echo "Please enter absolute path for ORACLE_HOME: ";
	read ORACLE_HOME
else 
	echo "Using ORACLE_HOME: $ORACLE_HOME" 
fi

if [ $ECLIPSE_HOME -eq ""]; then
	echo "ECLIPSE_HOME not set.";
	echo "Please enter absolute path for ECLIPSE_HOME: ";
	read ECLIPSE_HOME
else
	echo "Using ECLIPSE_HOME: $ECLIPSE_HOME";
fi

# -------------------------------------------------------------------
# Check if Maven is in PATH
# -------------------------------------------------------------------
mvn -v
if [ $? -eq 0 ]; then
	echo "Maven exists.";
else
	echo "Maven does not exist.";
	exit 1;
fi
		
# -------------------------------------------------------------------
# Create some helpful variables
# -------------------------------------------------------------------
ADF_VERSION="12.1.3"
SYNC_TOOLS="$ORACLE_HOME/oracle_common/plugins/maven/com/oracle/maven/oracle-maven-sync/$ADF_VERSION"
ARCH_HOME="$ECLIPSE_HOME/plugins/oracle.eclipse.tools.adf_7.4.0.201504081335/maven/ADF Basic Application Archetype"

# -------------------------------------------------------------------
# Next steps require an existing JDeveloper installation
# -------------------------------------------------------------------
# Install Oracle's Maven sync into your local repository
mvn install:install-file -DpomFile=$SYNC_TOOLS/oracle-maven-sync-$ADF_VERSION.pom -Dfile=$SYNC_TOOLS/oracle-maven-sync-$ADF_VERSION.jar
if [ $? -eq 0 ]; then
	echo "Plugin successfully installed.";
else
	echo "Plugin not installed. Exiting.";
	exit 1;
fi	

# Copy plugins into local repository
mvn com.oracle.maven:oracle-maven-sync:push -DoracleHome=$ORACLE_HOME
if [ $? -eq 0 ]; then
	echo "Plugins synchronized.";
else
	echo "Plugins not synchronized. Exiting.";
	exit 1;
fi
	
# -------------------------------------------------------------------
# Install Maven archetype from Eclipse for ADF
# -------------------------------------------------------------------
CWD=`pwd`
cd "$ARCH_HOME"
if [ $? -eq 1 ]; then
	echo "Directory does not exist. Exiting";
	exit 1;
fi

mvn clean install
mvn archetype:update-local-catalog

cd $CWD