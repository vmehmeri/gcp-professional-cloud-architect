## Segment 6: Designing a Solution Infrastructure that Meets Technical Requirements

### Demo
#### Technical Requirements: 
1. Deployment Manager, Cloud Source Repositories
2. Code review and approvals must be in place for infrastructure provisioning. The review process should be decentralized and owned by each team
3. All API access should be private and use of external IP addresses restricted
4. All API communications over HTTPS, enforced SHA-256 encryption on all data stores
5. Microservices architecture


#### Solution Design
1. Provisioning must be done through Infrastructure-as-Code process
2. Cloud Source Repositories, one source repo per product/service, pull request mechanism enforced
3. Private Google Access, VPC Service Controls, Organization Service Policy constraints
4. Cloud-first development leveraging Google’s default encryption at rest and in transit. Anthos Service Mesh with mutual TLS on all communications.
5. Kubernetes, Anthos



