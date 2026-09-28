FROM registry.heroiclabs.com/heroiclabs/nakama:3.26.0
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
