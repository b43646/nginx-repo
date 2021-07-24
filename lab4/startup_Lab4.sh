#!/bin/bash
echo "Moving Lab 1 files"
#
#moving lab 1 files
#
mv /home/student/Lab1 /home/student/.Lab1
mv /home/student/Snippets_Lab1 /home/student/.Lab1/Snippets_Lab1
mv /home/student/Caching_Lab_Guide1.pdf /home/student/.Lab1/Caching_Lab_Guide1.pdf
#
# Moving Lab4 files to home directory
#
echo "setting up Lab4 files"
mv /home/student/.Lab4 /home/student/Lab4
cp /home/student/Lab4/Snippets_Lab4 /home/student
cp /home/student/Lab4/Caching_Lab_Guide4.pdf /home/student
cp -r /home/student/Lab4/Answers /home/student
sudo cp /home/student/Lab4/default.conf.Lab4_Start /etc/nginx/conf.d/default.conf
sudo nginx -s reload
docker start mongodb
docker start pymongo-app
echo "Done"
