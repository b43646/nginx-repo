#!/bin/bash
echo "Moving Lab1 lab files"
#
mv /home/student/Lab1 /home/student/.Lab1
mv /home/student/Snippets_Lab1 /home/student/.Lab1/Snippets_Lab1
mv /home/student/Caching_Lab_Guide1.pdf /home/student/.Lab1/Caching_Lab_Guide1.pdf
#
# Setting up Lab2 files to home directory
#
echo "Setting up Lab2 lab files"
cp /home/student/.Lab2/Snippets_Lab2 /home/student
cp /home/student/.Lab2/Caching_Lab_Guide2.pdf /home/student
cp -r /home/student/.Lab2/Answers /home/student
mv /home/student/.Lab2 /home/student/Lab2
echo "Done"
