#!/bin/bash

ANDROID_JARS_PATH="soot/platforms"
JAVA_CLASSPATH="soot/axml-2.0.jar:soot/slf4j-api-1.7.5.jar:soot/slf4j-simple-1.7.5.jar:soot/soot-infoflow-android.jar:soot/soot-infoflow.jar:soot/soot-trunk.jar:soot/baksmali-2.1.1.jar:."

APK_FILE=$1
SOOT_OUT_DIR=$2

if [ -z "$APK_FILE" ] | [ -z "$SOOT_OUT_DIR" ]; then
    echo "Usage: ./decompile <apk_file> <output_directory>"
    exit 1
fi

PROCESS_THIS=" -process-dir $APK_FILE"
SOOT_CLASSPATH="${APK_FILE}"

SOOT_CMD="soot.Main -d $SOOT_OUT_DIR -force-android-jar $ANDROID_JARS_PATH -allow-phantom-refs -src-prec apk -ire -f J $PROCESS_THIS"

java -Xss50m -Xmx1500m -classpath ${JAVA_CLASSPATH} ${SOOT_CMD}

