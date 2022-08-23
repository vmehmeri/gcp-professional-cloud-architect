export PROJECT_ID=PROJECT
export REGION=REGION 

gcloud config set project $PROJECT_ID

gcloud compute firewall-rules create allow-http-from-internet \
    --network demo-vpc \
    --priority 1000 \
    --direction ingress \
    --action allow \
    --target-tags web \
    --source-ranges 0.0.0.0/0 \
    --rules tcp:80 

gcloud compute firewall-rules create allow-http-from-frontend \
    --network demo-vpc \
    --priority 1000 \
    --direction ingress \
    --action allow \
    --target-tags app \
    --source-tags web \
    --rules tcp:8080 

 

