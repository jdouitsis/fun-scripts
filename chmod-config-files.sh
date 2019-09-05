#!/bin/bash
# This file is used make all the scripts the folder executable
clear


for entry in *
do
  chmod 700 $entry
done