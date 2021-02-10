

1. Exercise1 



git  clone https://github.com/geethankuriakose/mydemo

cd ~/mydemo/Exercise1

sh ssh_keygen.sh\
terraform init\
terraform plan\
terraform apply\
terraform output -json public_ip_address | jq -r '.[] '>out.txt\
./get_resources_info.sh

2. Exercise2.txt 
3. Exercise3.txt  
4. Exercise4.txt 

