#!/usr/bin/python3

import sys
import subprocess

"""
Another disk usage tool employing the radial treemap approach is Duc.
Featuring a collection of tools, you can install Duc on Debian-based distros with
> sudo apt install duc
"""

def create_index(path):
    """
    Get started with Duc by indexing the /usr directory. This builds a database
    (more on that below), and can take a while on the first run:

    path is the path of analized data, example '/media/ExternalHDD'
    """
    proc = subprocess.Popen(["duc", "index", path], stdout=subprocess.PIPE)
    output = proc.stdout.read()
    print(output.decode('UTF-8'))

    
def list_content(subpath):
    """
    From here, you can use ls to list the contents of the directory and their
    impact on the HDD:
    """
    proc = subprocess.Popen(["duc", "ls", "-Fg", path], stdout=subprocess.PIPE)
    output = proc.stdout.read()
    print(output.decode('UTF-8'))

def show_gui(path):
    """
    If you prefer to see this in Duc’s visual analyzer meanwhile, use
    """
    proc = subprocess.call(["duc", "gui", path])


def main():
    args = sys.argv
    if len(args) < 2:
        print('Usage:', sys.argv[0], ' <path_to_analize>')
        exit(0)

    path = args[1]
    create_index(path)
    show_gui(path)


if __name__ == '__main__':
    main()