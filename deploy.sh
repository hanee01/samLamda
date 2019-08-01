#!/bin/bash 
#aws s3 cp s3://samtemplateversions/2019.07.31-09.03.07.sam.tar.zip
#cd /home/ubuntu/sam-app/code
#tar xvf 2019.07.31-09.03.07.sam.tar.zip
echo "Deployment Started"
cd /artifacts/stg
sam deploy --template-file outputtemplate.yaml --stack-name sammanul --region us-east-1 --capabilities CAPABILITY_IAM --parameter-overrides StageName=Staging
echo "Deployment Completed"
