docker run -d --sysctl net.ipv4.ping_group_range="0 2147483647" --env TWINGATE_NETWORK="digitaldust" --env TWINGATE_ACCESS_TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6IjhGT3IzdldOOHhXVWVVSkFyMVQ4QTVyRkJIUE8xTmZpeG9uN2w2ZXduU2siLCJ0eXAiOiJEQVQifQ.eyJudCI6IkFOIiwiYWlkIjoiMTY4NDk2IiwiZGlkIjoiOTg1ODU2IiwianRpIjoiYWM3NmQxOTktMGM5Mi00OWY0LTgzYzQtZDI0Y2E5NjdkNGIzIiwiaXNzIjoidHdpbmdhdGUiLCJhdWQiOiJkaWdpdGFsZHVzdCIsImV4cCI6MTY5OTgxNDUzNiwiaWF0IjoxNjk5ODEwOTM2LCJ2ZXIiOiI0IiwidGlkIjoiNTYzNTQiLCJybnciOjE2OTk4MTEyMzYsInJuZXRpZCI6IjcwMzIzIn0.5zLxTJVKqCpUSCCt8PABnChUPCSq482Yea9OO7UDpR2u932xCVatRALzz2rCZQ6ceLXFdSrs5qCdjB5a2lu3RQ" --env TWINGATE_REFRESH_TOKEN="-StLYbG0BEYyvIKAiofcHl_3yzq7PqgzaT4bpAF_9Gnj7KzjYUvwEK_Rpl_OXKXWT5upqkW8FM6zN-lJEajtKdpVHDgg2U4ncYk_NIayyAssMDo7758GOUoCoxYQp8cILkUCww"  --env TWINGATE_LABEL_HOSTNAME="`hostname`" --name "twingate-pumpkin-teal" --restart=unless-stopped --pull=always twingate/connector:1