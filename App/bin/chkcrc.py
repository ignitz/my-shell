#!/usr/bin/python3

# import argparse
import sys
import subprocess

def main():
    if len(sys.argv) > 1:
        sfv_filename = sys.argv[1]
        with open(sfv_filename) as file:
            data = file.readlines()
            for line in data:
                filename, crc_to_check = line.split(' ')[:2]
                # subprocess.run("crc32 " + filename, shell=True, check=True)
                proc = subprocess.Popen(["crc32", filename], stdout=subprocess.PIPE)
                output = proc.stdout.read()
                if len(crc_to_check) == 0:
                    break
                print(output[:-1].decode('UTF-8'), crc_to_check[:-1])
                if output.decode('UTF-8') != crc_to_check:
                    print('Diff CRC32')

if __name__ == '__main__':
	main()
