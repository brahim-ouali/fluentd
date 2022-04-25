FROM bitnami/fluentd:1.14.6-debian-10-r24
USER root
RUN apt-get update && apt-get upgrade -y --force-yes
RUN ["gem", "install", "fluent-plugin-anonymizer", "--no-document", "--version", "1.0.0"]
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "5.2.2"]
RUN ["gem", "install", "fluent-plugin-prometheus", "--no-document", "--version", "2.0.2"]
RUN ["gem", "install", "fluent-plugin-splunk-hec", "--no-document", "--version", "1.2.12"]
RUN ["gem", "install", "fluent-plugin-mail", "--no-document", "--version", "0.3.0"]
RUN ["gem", "install", "fluent-plugin-rabbitmq", "--no-document", "--version", "0.0.9"]
RUN ["gem", "install", "fluent-plugin-filter-base64-decode", "--no-document"]
RUN ["gem", "install", "fluent-plugin-extract_query_params", "--no-document", "--version", "0.1.1"]
RUN ["gem", "install", "fluent-plugin-filter-parse-audit-log", "--no-document", "--version", "0.1.2"]
RUN ["gem", "install", "fluent-plugin-nostat", "--no-document", "--version", "0.2.1"]
USER fluent
