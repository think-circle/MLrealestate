FROM tensorflow/serving
ENV MODEL_BASE_PATH=/models
ENV MODEL_NAME=model

COPY /saved_models /models/model
COPY tf_serving_entrypoint.sh /usr/bin/tf_serving_entrypoint.sh
#ENV PORT=8601

RUN chmod +x /usr/bin/tf_serving_entrypoint.sh
ENTRYPOINT []
CMD ["/usr/bin/tf_serving_entrypoint.sh"]




