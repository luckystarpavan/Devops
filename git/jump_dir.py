from os import listdir
from os.path import join, isdir, dirname, basename

filepath = None
# get parent of the .py running
par_dir = dirname(__file__)
while True:
    # get basenames of all the directories in that parent
    dirs = [basename(join(par_dir, d)) for d in listdir(par_dir) if isdir(join(par_dir, d))]
    # the parent contains desired directory
    if 'Data_Input' in dirs:
        filepath = par_dir
        break
    # back it out another parent otherwise
    par_dir = dirname(par_dir)
