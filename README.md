         ___        ______     ____ _                 _  ___  
        / \ \      / / ___|   / ___| | ___  _   _  __| |/ _ \ 
       / _ \ \ /\ / /\___ \  | |   | |/ _ \| | | |/ _` | (_) |
      / ___ \ V  V /  ___) | | |___| | (_) | |_| | (_| |\__, |
     /_/   \_\_/\_/  |____/   \____|_|\___/ \__,_|\__,_|  /_/ 
 ----------------------------------------------------------------- 


Hi there! Welcome to AWS Cloud9!

To get started, create some files, play with the terminal,
or visit https://docs.aws.amazon.com/console/cloud9/ for our documentation.

Happy coding!


aws ec2 run-instances --image-id ami-0be70fe886f1bdc4b \
    --instance-type t2.medium --key-name fenwick \
    --security-group-ids sg-0db204212259fa981 \
    --iam-instance-profile Arn=arn:aws:iam::626387663432:instance-profile/AWSCloudWatchAgent \
    --subnet-id subnet-3f880c59 --count 1 