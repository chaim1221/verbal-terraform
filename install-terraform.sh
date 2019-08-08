tf_version="0.12.6"
tf_filename="terraform_$tf_version"
# WELCOME BACK TO BASH
if [[ $OSTYPE =~ "darwin" ]]; then
  tf_filename+="_darwin"
else
  tf_filename+="_linux"
fi
tf_filename+="_amd64.zip"

# terraform_"$tf_version"_linux_amd64.zip
curl https://releases.hashicorp.com/terraform/$tf_version/$tf_filename -o $tf_filename
unzip $tf_filename
sudo mkdir -p /usr/local/bin
sudo mv terraform /usr/local/bin/terraform
rm $tf_filename

exit 0
