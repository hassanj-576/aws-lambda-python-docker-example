FROM public.ecr.aws/lambda/python:3.9

COPY requirements.txt /requirements.txt
RUN python3 -m pip install -r /requirements.txt --target ${LAMBDA_TASK_ROOT}
COPY ./code ${LAMBDA_TASK_ROOT}
CMD ["handler.lambda_handler"]
