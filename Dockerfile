FROM fluent/fluentd:v1.12.0-debian-1.0
USER root
RUN apt-get update && apt-get install -y libsystemd0 build-essential
RUN ["gem", "install", "fluent-plugin-anonymizer", "--no-document", "--version", "1.0.0"]
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "4.3.3"]
RUN ["gem", "install", "fluent-plugin-prometheus", "--no-document", "--version", "2.0.0"]
RUN ["gem", "install", "fluent-plugin-splunk-hec", "--no-document", "--version", "1.2.4"]
RUN ["gem", "install", "fluent-plugin-mail", "--no-document", "--version", "0.3.0"]
RUN ["gem", "install", "fluent-plugin-rabbitmq", "--no-document", "--version", "0.0.9"]
RUN ["gem", "install", "fluent-plugin-filter-base64-decode", "--no-document"]
RUN ["gem", "install", "fluent-plugin-extract_query_params", "--no-document", "--version", "0.1.1"]
RUN ["gem", "install", "fluent-plugin-filter-parse-audit-log", "--no-document", "--version", "0.1.2"]
RUN ["gem", "install", "fluent-plugin-nostat", "--no-document", "--version", "0.2.1"]
RUN ["gem", "install", "fluent-plugin-filter-parse-audit-log", "--no-document", "--version", "0.1.2"]
RUN ["gem", "install", "fluent-plugin-systemd", "--no-document", "--version", "1.0.5"]
USER fluent

