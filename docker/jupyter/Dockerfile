# Jupyter 이미지 기반
FROM jupyter/base-notebook:latest

USER root

RUN mkdir -p /apps/jovyan/scripts

COPY set_jupyter_password.sh /apps/jovyan/scripts/set_jupyter_password.sh

RUN chown -R jovyan:users /apps/jovyan

RUN chown -R jovyan:users /apps/jovyan/scripts

RUN chgrp -R users /apps/jovyan

RUN chgrp -R users /apps/jovyan/scripts

RUN chmod +x /apps/jovyan/scripts/set_jupyter_password.sh

RUN apt-get update && apt-get install -y expect git && apt-get clean

USER jovyan

# 작업 디렉토리 설정
WORKDIR /apps/jovyan


RUN pip install numpy pandas matplotlib tensorflow keras
# 볼륨 및 포트 노출


# 기본 명령
CMD ["/apps/jovyan/scripts/set_jupyter_password.sh"]
