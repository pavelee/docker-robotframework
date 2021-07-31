FROM alpine:3.14

ENV ROBOT_REPORT_DIR /opt/robotframework/reports
ENV ROBOT_TASK_DIR /opt/robotframework/tasks
ENV ROBOT_WORK_DIR /opt/robotframework/temp

RUN apk add python3 py3-pip

RUN pip3 install robotframework

COPY run-robot.sh /opt/robotframework/bin/
RUN chmod -R +x /opt/robotframework/bin/

ENV PATH=/opt/robotframework/bin:$PATH

VOLUME ${ROBOT_REPORT_DIR}

WORKDIR ${ROBOT_WORK_DIR}

CMD ["run-robot.sh"]