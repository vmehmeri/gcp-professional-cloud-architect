## Segment 6: Designing a Solution Infrastructure that Meets Business Requirements

### Demo
#### Business Requirements: 
1. Provisioning of cloud infrastructure resources must be auditable
2. Changes to cloud infrastructure must go through a review process that minimizes impact to development velocity
3. Data cannot traverse the public internet
4. Data must be encrypted in transit and at rest
5. A failure in one part of the system should not bring down the entire system


#### Solution: Technical requirements that the business requirements map to
1. Deployment Manager, Cloud Source Repositories
2. Code review and approvals must be in place for infrastructure provisioning. The review process should be decentralized and owned by each team
3. All API access should be private and use of external IP addresses restricted
4. All API communications over HTTPS, enforced SHA-256 encryption on all data stores
5. Microservices architecture


### Segment Resources
- [Cloud Adoption Framework](https://services.google.com/fh/files/misc/google_cloud_adoption_framework_whitepaper.pdf)
- [Google Cloud Migration](https://cloud.google.com/architecture/migration-to-gcp-getting-started)
