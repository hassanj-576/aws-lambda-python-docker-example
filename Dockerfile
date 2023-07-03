FROM --platform=linux/x86_64 public.ecr.aws/lambda/python:3.9

COPY requirements.txt /requirements.txt
COPY gap-4.12.2.tar.gz /gap-4.12.2.tar.gz
RUN yum install tar -y
RUN cd /
RUN ls
RUN tar -zxvf gap-4.12.2.tar.gz
RUN cd /gap-4.12.2
RUN ./configure
RUN make
RUN cd ..
RUN python3 -m pip install -r /requirements.txt --target ${LAMBDA_TASK_ROOT}
COPY ./code ${LAMBDA_TASK_ROOT}
CMD ["handler.lambda_handler"]
