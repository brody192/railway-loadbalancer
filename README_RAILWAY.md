# Deploy and Host HAProxy on Railway

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/YOUR_TEMPLATE_ID?referralCode=YOUR_REFERRAL_CODE)

HAProxy is an industry-standard, high-performance TCP/HTTP load balancer trusted by GitHub, Reddit, Stack Overflow, and countless production systems. This Railway template provides zero-configuration deployment with automatic health checks, IPv6 support, and seamless backend service routing.

## About Hosting HAProxy

Hosting HAProxy on Railway gives you a production-ready load balancer in seconds. Simply deploy the template and set your backend service URL - HAProxy automatically handles Railway's dual-stack networking (IPv4/IPv6), health checks, and intelligent request routing. Perfect for API gateways, custom domains, and microservices routing with battle-tested reliability.

## Common Use Cases

- **API Gateway**: Single entry point for multiple backend services on Railway
- **Custom Domain Routing**: Point your custom domain to any Railway service
- **Frontend Proxy**: Route production domains to your Railway-hosted frontend
- **Microservices Gateway**: Centralize routing for distributed Railway services
- **Load Balancing**: Distribute traffic across multiple backend instances
- **Health Check Proxy**: Automatically remove unhealthy backends from rotation

## Simple 2-Step Setup

1. **Deploy this template** on Railway

2. **Set your backend service**:
   ```bash
   BACKEND_HOST=your-backend.railway.internal
   BACKEND_PORT=8000
   ```

That's it! Your high-performance load balancer is now routing traffic.

## Template Features

✅ **Zero Configuration** - Works immediately after deployment  
✅ **Railway Optimized** - Dual-stack IPv4/IPv6 support with `v4v6` binding  
✅ **Health Checks** - Built-in health monitoring removes unhealthy backends  
✅ **Production Ready** - Battle-tested by the world's largest websites  
✅ **Simple Management** - Just set host and port environment variables

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT` | `8080` | Port HAProxy listens on |
| `BACKEND_HOST` | `backend.railway.internal` | Internal hostname of your backend service |
| `BACKEND_PORT` | `8080` | Port your backend service listens on |
| `HEALTH_PATH` | `/health` | Health check endpoint path |

## Example Configuration

If you have a service called `api` listening on port 3000:

```bash
BACKEND_HOST=api.railway.internal
BACKEND_PORT=3000
HEALTH_PATH=/health
```

## How It Works

- **Dual-Stack Networking**: Binds to `[::]` with `v4v6` flag for IPv4/IPv6 support
- **Health Monitoring**: Performs HTTP health checks on configured endpoint
- **Automatic Failover**: Removes unhealthy backends from rotation
- **Round-Robin Balancing**: Distributes requests evenly across backends

### Links

- [HAProxy Documentation](https://www.haproxy.org/) - Official documentation
- [Railway Documentation](https://docs.railway.com/) - Platform documentation

## Why Deploy HAProxy on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with IPv6 networking configuration, container orchestration, or scaling concerns, while allowing you to vertically and horizontally scale your proxy layer with automatic health monitoring.

By deploying HAProxy on Railway, you get the reliability of the most battle-tested load balancer in the industry combined with Railway's developer experience. HAProxy powers some of the highest-traffic websites in the world - GitHub, Reddit, Stack Overflow, Twitter, and more trust it for their production infrastructure.

Host your load balancer, backend services, databases, and more on Railway with the confidence that HAProxy will efficiently route traffic with enterprise-grade reliability and performance.

