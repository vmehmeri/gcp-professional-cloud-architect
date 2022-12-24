## Segment 4: Designing for Observability, Security, and Compliance

### Demo
#### Requirements: 
- Firewall rules with minimal required access
- Least-privilege access permissions
- Restrict use of external IP addresses
- Configure a perimeter around sensitive data

#### Design 
- Firewall rules for the specific ports and protocols where traffic is being served. Leverage implicit deny behavior (see `configure_fw_rules.sh`).
- Prune service accounts and users’ permissions to minimal possible scope (see https://cloud.google.com/compute/docs/access/create-enable-service-accounts-for-instances#using_the_default_service_account)
- Apply Organization Policy constraints to restrict use of external IP addresses
- Configure VPC Service Controls to create a perimeter for Cloud Storage

Walkthrough: https://youtu.be/t1_PdRPqfAo

### Segment Resources
- [VPC Private Access Options](https://cloud.google.com/vpc/docs/private-access-options)
- [Organization policy constraints](https://cloud.google.com/resource-manager/docs/organization-policy/org-policy-constraints)
- [Compliance resource center](https://cloud.google.com/security/compliance)
- [Types of profiling](https://cloud.google.com/profiler/docs/about-profiler#types_of_profiling_available)