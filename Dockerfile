# Use the base Twingate Connector image
FROM twingate/connector:1

# Set sysctl parameter
RUN ["/bin/bash", "-c", "sysctl -w net.ipv4.ping_group_range='0 2147483647'"]

# Set environment variables
ENV TWINGATE_NETWORK="digitaldust" \
    TWINGATE_ACCESS_TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6IjhGT3IzdldOOHhXVWVVSkFyMVQ4QTVyRkJIUE8xTmZpeG9uN2w2ZXduU2siLCJ0eXAiOiJEQVQifQ.eyJudCI6IkFOIiwiYWlkIjoiMTY4NDk2IiwiZGlkIjoiOTg1ODU2IiwianRpIjoiYWQxYzA2NTgtZmJmMC00NmNiLTkwZGEtMjQzNDM5ZjgwMjk4IiwiaXNzIjoidHdpbmdhdGUiLCJhdWQiOiJkaWdpdGFsZHVzdCIsImV4cCI6MTY5OTgxNjgyNSwiaWF0IjoxNjk5ODEzMjI1LCJ2ZXIiOiI0IiwidGlkIjoiNTYzNTQiLCJybnciOjE2OTk4MTM1MjUsInJuZXRpZCI6IjcwMzIzIn0._oIOoquFFCrx90atP8bhPjeNN0MSwhRjNIRFTeDML7Ljd4H-OUNYg7Rm5KkkhogiFSPRFcF3CIRPVOZFFTQHZw" \
    TWINGATE_REFRESH_TOKEN="Pfc4CzULaGBPUFS_GlqqB--u5bGC8ZOq4S6BteiPe5ihajiek8jtndMR3CG_pcJ4yv7f5pPlliE9A-eLz_wdxlyk6Z0OcH6djRjbNB5BXPn4KlXWbP7UwE1C2-gLtlfTPBMngw" \
    TWINGATE_LABEL_HOSTNAME="$(hostname)"

# Set container name
CMD ["--name", "twingate-pumpkin-teal", "--restart=unless-stopped", "--pull=always"]
