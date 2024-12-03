FROM docker:stable

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY post-entrypoint.sh /usr/local/bin/post-entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/post-entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]