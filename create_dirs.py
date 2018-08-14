#!/usr/bin/env python

from __future__ import print_function
import sys
import os

if __name__=='__main__':
  helpmess="""Usage:
create_dirs taskscript

Creates the directory structure corresponding to a Taskwarrior script.
"""
  # Inputs
  if len(sys.argv)<2:
      print(helpmess)
      sys.exit(0)
  else:
      infile=sys.argv[1]

  infile=os.path.realpath(infile)

  prev = ''
  with open(infile, 'r') as f:
    for line in f:
        if line[0] != '#':
            words = line.split('\'')
            if  len(words) > 4:
                dpath = './TW/{}/{}'.format(words[1].split()[0], words[3].split()[0])
 
                if dpath != prev:
                    print(dpath)
                    prev = dpath
                    os.makedirs(dpath)
