###### check list for git ######
#Generate the ssh in the local ubuntu mechine
ssh-keygen -t rsa
#Open the .ssh directory, copy the Public key(id_rsa.pub) and paste in the github (githib--> settings --> SSH and GPG keys--> paste in SSH keys)
git clone git@github.com:luckystarpavan/Devops.git

#commands 
git init
git add. 
git commit -m "this is  my first commit"

#this will push the code into github
git push origin master 
