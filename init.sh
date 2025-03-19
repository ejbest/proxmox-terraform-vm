
if [ -f key.pem ]; then
  sudo rm key.pem
fi

terraform init -upgrade 
terraform fmt
terraform validate