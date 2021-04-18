
# Installing the CodeDeploy agent on EC2
```
sudo yum update -y
sudo yum install -y ruby wget
wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
```


# create a bucket and enable versioning
```
aws s3 mb s3://lostandfound-be-tam --region ap-southeast-1 --profile tamuser
aws s3api put-bucket-versioning --bucket lostandfound-be-tam --versioning-configuration Status=Enabled --region ap-southeast-1 --profile tamuser
```

# deploy the files into S3
```
aws deploy push --application-name CodeDeployLandF1 --s3-location s3://lostandfound-be-tam/CodeDeployLandF1/app.zip --ignore-hidden-files --region ap-southeast-1 --profile tamuser
```