# simple-docker-firefox-chromium/chrome
run you favourite browser firefox/chromium/chrome isolated in a secure ubuntu docker container

XSOCK=/tmp/.X11-unix/X0


docker build --tag x .                                              //container build  command 


docker run -it  -d --privileged -v $XSOCK:$XSOCK  x firefox            // run firefox directly

docker run -it  -d  --privileged -v $XSOCK:$XSOCK  x chromium-browser  // run chromium 

docker run -it  -d --privileged -v $XSOCK:$XSOCK  x google-chrome      //run  google-chrome 
        
