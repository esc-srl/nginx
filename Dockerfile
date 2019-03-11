FROM nginx:alpine

ENV PHPFPM_HOST phpfpm
ENV PHPFPM_PORT 9000
ENV ENVIRONMENT dev
ENV CLIENT_MAX_BODY_SIZE 50M

VOLUME ["/app"]

ADD /resources/* /resources/
WORKDIR /resources

ENTRYPOINT ["/resources/entrypoint.sh"]

EXPOSE 80