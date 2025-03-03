#!/bin/bash
#
##########################
# Author: Harish
# Date: 03/03/2025
#
# This script is about resource tracker of AWS usage
#
# Version: 1.1
##########################
#
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
#
#
#
set -x

# Define output file
OUTPUT_FILE="/home/ubuntu/ShellScript-Learning/miniproject/resource_tracker_report.txt"

# Clear the output file at the start of each run
> "$OUTPUT_FILE"

# AWS S3 Buckets
echo "print list of s3 buckets" | tee -a "$OUTPUT_FILE"
aws s3 ls | tee -a "$OUTPUT_FILE"

# AWS EC2 Instances
echo "print list of ec2 instances" | tee -a "$OUTPUT_FILE"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' | tee -a "$OUTPUT_FILE"

# AWS Lambda Functions
echo "print list of lambda functions" | tee -a "$OUTPUT_FILE"
aws lambda list-functions | tee -a "$OUTPUT_FILE"

# AWS IAM Users
echo "print list of iam users" | tee -a "$OUTPUT_FILE"
aws iam list-users | tee -a "$OUTPUT_FILE"

# Final message
echo "Resource tracking completed. Report saved to $OUTPUT_FILE"

