export PROJECT_ID=PROJECT
export REGION=REGION 
export VM_ZONE=VM_ZONE
export BUCKET_NAME=BUCKET_NAME # must be globally unique

gcloud config set project $PROJECT_ID

# Create VPC network and subnets
gcloud compute networks create demo-vpc --subnet-mode=custom
gcloud compute networks subnets create frontend-subnet --network=demo-vpc --range=10.0.1.0/24 --region=$REGION
gcloud compute networks subnets create backend-subnet --network=demo-vpc --range=10.0.2.0/24 --enable-private-ip-google-access --region=$REGION 

# Create frontend instance, with public IP address
gcloud compute instances create frontend-instance-1 \
    --zone $VM_ZONE \
    --machine-type=e2-micro \
    --image-project=debian-cloud \
    --image-family=debian-11 \
    --network=demo-vpc \
    --subnet=frontend-subnet \
    --tags web

# Create backend instance, without public IP address
gcloud compute instances create backend-instance-1 \
    --zone $VM_ZONE \
    --machine-type=e2-micro \
    --image-project=debian-cloud \
    --image-family=debian-11 \
    --network=demo-vpc \
    --subnet=backend-subnet \
    --no-address \
    --tags app
    
# Create bucket
gsutil mb -p $PROJECT_ID -l $REGION -b on gs://$BUCKET_NAME