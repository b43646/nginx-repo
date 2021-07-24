#!/bin/bash
echo "Moving Lab 1 files"
#
#moving lab 1 files
#
mv /home/student/Lab1 /home/student/.Lab1
mv /home/student/Snippets_Lab1 /home/student/.Lab1/Snippets_Lab1
mv /home/student/Caching_Lab_Guide1.pdf /home/student/.Lab1/Caching_Lab_Guide1.pdf
#
# Moving Lab3 files to home directory
#
echo "setting up Lab3 files"
mv /home/student/.Lab3 /home/student/Lab3
cp /home/student/Lab3/Snippets_Lab3 /home/student
cp /home/student/Lab3/Caching_Lab_Guide3.pdf /home/student
cp -r /home/student/Lab3/Answers /home/student
sudo cp /home/student/Lab3/default.conf.Lab3_Start /etc/nginx/conf.d/default.conf
sudo nginx -s reload
docker start mongodb
docker start pymongo-app
echo "Done"
