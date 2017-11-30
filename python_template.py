#!/usr/bin/env python3

import argparse
import sys
import os
import time

import logging
logger = logging.getLogger(__name__)
logger.setLevel(logging.INFO)


def main():
    global logger
    parser = argparse.ArgumentParser(description=None)
    parser.add_argument('-f', '--flag', help="", action='store_true')
    parser.add_argument('forced_arg', help="")
    args = parser.parse_args()


    elapsed = time.time() - start
    print("Finished, took {} seconds".format(elapsed))

if __name__ == "__main__":
    main()
