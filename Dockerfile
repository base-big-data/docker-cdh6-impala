FROM ccinn/cdh6:latest

LABEL maintainer="Caiwenhui <471113744@qq.com>"

USER root

ADD bin/support.sh /bin/
ADD bin/run.sh /bin/

RUN source /bin/support.sh;\
  loop_exec 'yum install -y impala impala-server impala-shell impala-catalog impala-state-store' ;

WORKDIR /

CMD ["/bin/bash"]