## Segment 3: Configuring Network, Storage, and Compute

### Demo
#### Steps
1. Create custom VPC with two subnets (frontend-subnet and backend-subnet)
2. Enable Private Google Access on backend-subnet
3. Create a frontend Compute Engine instance with an external IP address and tagged “web”
4. Create a backend Compute Engine instance without external IP address and tagged “app”
5. Create a regional Cloud Storage bucket


#### Solution (gcloud)
See `demo.sh`
Walkthrough: https://youtu.be/2iQ4pTY0sZc

### Segment Resources
- [Machine types](https://cloud.google.com/compute/docs/machine-types)
- [GKE Autopilot and GKE Standard comparison](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview)
- [Kubernetes components](https://kubernetes.io/docs/concepts/overview/components/)
