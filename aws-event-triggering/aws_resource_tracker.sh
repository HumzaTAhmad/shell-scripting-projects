#!/bin/bash

#######################
# Author: Humza Ahmad
# Date: 11th-Jan
#
# Version: v1
#
# This script will report the AWS resource usage
# #####################

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 buckets
echo 'print list of s3 buckets'
aws s3 ls > resourceTracker

#list EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTracker

#list AWS Lambda
echo "Print list of lambda functions"
aws lambda list-functions > resourceTracker

#list IAM users
echo "Print list of IAM users"
aws iam list-users > resourceTracker
