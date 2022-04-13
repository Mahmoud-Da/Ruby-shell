#!/bin/bash
mkdir a
mkdir b
touch a/test.txt
cd a
mv test.txt ../b/
cd ../b
mv test.txt ../
