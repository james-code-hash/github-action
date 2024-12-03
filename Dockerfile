FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY post-entrypoint.sh /post-entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN chmod +x /post-entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
