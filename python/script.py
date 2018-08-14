#!/usr/bin/python3

import subprocess
import os


def call(*args, **kwargs):
    return subprocess.call(*args, **kwargs)


def output(*args, **kwargs):
    # neet to cut off '\n' from check_output
    string = str(subprocess.check_output(*args, **kwargs))[:-1]
    return string


def find(_file):
    f = subprocess.Popen('find -name "{}"'.format(_file),
                         shell=True,
                         stdout=subprocess.PIPE,
                         stdin=subprocess.PIPE)
    out, err = f.communicate()
    return out


bin_dir = os.listdir('bin/')
if 'activate' in bin_dir:
    os.system('source {}').format(find('activate'))
    os.system('python {} runserver'.format(find('manage.py')))
else:
    os.system('source {}')
    os.system('python src/hwdjango/manage.py runserver')
