# go_alpine
A simple alpine container ready to run compile and/or just rn ur golang applications

##TO UPDATE THIS DOCKERFILE
Download the tar of the version of go you want to install.  
Place it in the root directory and rename it go1.6.linux-amd64.tar.gz  

##TO USE THIS DOCKERFILE  
__Launch a binary__  
COPY your go binary  
chmod +x ur binary  
launch ur binary in CMD or entrypoint  

__Compile a Binary__  
copy ur go package  
/go/src is already set as the working directory  
run go build against ur package  
launch ur binary in CMD or entrypoint   