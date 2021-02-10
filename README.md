

1. Exercise1  /* Azure VM automation using terraform*/

#please open an Azure Cloud shell and execute following statements

git  clone https://github.com/geethankuriakose/mydemo

cd ~/mydemo/Exercise1

sh ssh_keygen.sh\
terraform init\
terraform plan\
terraform apply\
terraform output -json public_ip_address | jq -r '.[] '>out.txt\
./get_resources_info.sh

2. Exercise2.sh /*Elastic Search*/ 
 
3. Exercise3.sh  /*Redis Server*/
  
4. Exercise4.txt   /*503 Exception*/

