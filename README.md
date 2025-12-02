# HAProxy Load Balancer for Railway

A ready-to-deploy HAProxy load balancer template for Railway's private networking. Supports both IPv4 and IPv6.

## Quick Start

1. Deploy this template to Railway
2. Set the required environment variables
3. Point your public domain to this service

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT` | `8080` | Port HAProxy listens on |
| `BACKEND_HOST` | `backend.railway.internal` | Internal hostname of your backend service |
| `BACKEND_PORT` | `8080` | Port your backend service listens on |
| `HEALTH_PATH` | `/health` | Health check endpoint path |

## Example

If you have a service called `api` listening on port 3000:

```
BACKEND_HOST=api.railway.internal
BACKEND_PORT=3000
HEALTH_PATH=/health
```

## How It Works

- Binds to `[::]` with `v4v6` flag for dual-stack IPv4/IPv6 support
- Works with both legacy (IPv6-only) and new (IPv4+IPv6) Railway environments
- Performs health checks and removes unhealthy backends from rotation
