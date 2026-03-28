# Setup

## Installation
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. Clone this repo
   ```bash
   git clone https://github.com/zahraabouzeid/overleaf.git
   ```
3. `cd overleaf`
4. `docker compose up --build -d`

> First build takes a long time (~7GB for full TeX Live).

## Create Admin Account

Go to `http://overleaf.local/launchpad` and create the first admin account.


## Local Reverse Proxy

For routing `overleaf.local` to `localhost:4000`:

1. Add to hosts File `C:\Windows\System32\drivers\etc\hosts` as Administrator the following:

```
127.0.0.1   overleaf.local
```

2. Install Caddy
```bash
winget install CaddyServer.Caddy
```

3. Create a File at `C:\Users\<username>\.caddy`

```
overleaf.local {
    reverse_proxy localhost:4000
}
```

4. Start Caddy

```bash
caddy start --config "C:\Users\<username>\.caddy" --adapter caddyfile
```

Caddy runs as a Windows service and starts automatically with Windows. After changes to `.caddy` just reload it:

```bash
caddy reload --config "C:\Users\<username>\.caddy" --adapter caddyfile
```

