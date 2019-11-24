# docker-ssh-tunnel

Dockerized SSH Tunnel

## Environment variables

-   `TUNNEL_HOST`: SSH Tunnel hostname
-   `TUNNEL_USER`: SSH user of the Tunnel host
-   `TUNNEL_KEY_BASE64`: SSH private key of the tunnel host encoded in Base64
-   `TUNNEL_LOCALFORWARD`: LocalForward tunnel configuration, it support multiple tunnels separated by comma. Example: `*:80 myremotehot.com:80,*:443 myremotehot.com:443`. See: https://stackoverflow.com/questions/9146457/ssh-port-forwarding-in-a-ssh-config-file

```

```
