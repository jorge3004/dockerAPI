# ssh ec2-user@3.234.1.133 mkdir jorge
ssh ec2-user@3.234.1.133 rm -rf build
scp -r build ec2-user@3.234.1.133:/home/ec2-user