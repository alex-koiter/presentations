# Use decktape docker image
# Run in the terminal

sudo docker run --rm -t -v "`pwd`:/slides" -v ".:/home/user" ghcr.io/astefanutti/decktape reveal --fragments /home/user/mbquartR.html mbquartR.pdf
