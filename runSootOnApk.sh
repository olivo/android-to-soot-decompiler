#!/bin/bash

ANDROID_JARS_PATH="soot/platforms"
JAVA_CLASSPATH="soot/axml-2.0.jar:soot/slf4j-api-1.7.5.jar:soot/slf4j-simple-1.7.5.jar:soot/soot-infoflow-android.jar:soot/soot-infoflow.jar:soot/soot-trunk.jar:soot/baksmali-2.1.1.jar:."

APK_FILE=$1
SOOT_OUT_DIR=$2

PROCESS_THIS=" -process-dir $APK_FILE"
SOOT_CLASSPATH="${APK_FILE}"

SOOT_CMD="soot.Main -d $SOOT_OUT_DIR -force-android-jar $ANDROID_JARS_PATH -allow-phantom-refs -src-prec apk -ire -f J $PROCESS_THIS"

#SOOT_CMD="soot.jimple.infoflow.android.TestApps.Test ${APK_FILE} ${ANDROID_JARS_PATH}"

java -Xss50m -Xmx1500m -classpath ${JAVA_CLASSPATH} ${SOOT_CMD}

#java -Xmx4g -cp /v/filer4b/v20q001/olivo/soot/soot-trunk.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow-android.jar:/v/filer4b/v20q001/olivo/soot/slf4j-api-1.7.5.jar:/v/filer4b/v20q001/olivo/soot/axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "/v/filer4b/v20q001/olivo/android_apps/venmo/Venmo_v6.24.2_apkpure.com.apk" ${ANDROID_JARS_PATH}

#java -Xmx4g -cp /v/filer4b/v20q001/olivo/soot/soot-trunk.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow-android.jar:/v/filer4b/v20q001/olivo/soot/slf4j-api-1.7.5.jar:/v/filer4b/v20q001/olivo/soot/slf4j-simple-1.7.5.jar:/v/filer4b/v20q001/olivo/soot/axml-2.0.jar:/u/olivo/soot/log4j-1.2.16.jar soot.jimple.infoflow.android.TestApps.Test "/v/filer4b/v20q001/olivo/android_apps/YouTube_v11.07.59_apkpure.com.apk" ${ANDROID_JARS_PATH} --nostatic --aplength 1 --aliasflowins --nocallbacks --layoutmode none --nonearraysize

#java -Xmx4g -cp /v/filer4b/v20q001/olivo/soot/soot-trunk.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow.jar:/v/filer4b/v20q001/olivo/soot/soot-infoflow-android.jar:/v/filer4b/v20q001/olivo/soot/slf4j-api-1.7.5.jar:/v/filer4b/v20q001/olivo/soot/slf4j-simple-1.7.5.jar:/v/filer4b/v20q001/olivo/soot/axml-2.0.jar:/u/olivo/soot/log4j-1.2.16.jar soot.jimple.infoflow.android.TestApps.Test "/v/filer4b/v20q001/olivo/android_apps/YouTube_v11.07.59_apkpure.com.apk" ${ANDROID_JARS_PATH} --nostatic --aplength 5 --aliasflowins --nocallbacks --layoutmode none --nonearraysize
