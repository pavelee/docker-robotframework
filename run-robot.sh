#!/bin/sh

HOME=${ROBOT_WORK_DIR}

robot \
--outputDir $ROBOT_REPORT_DIR \
${ROBOT_OPTIONS} \
$ROBOT_TASK_DIR
