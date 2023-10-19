import os
path=os.path.abspath(os.path.dirname(__file__))
path=path+"/assets"
list=os.listdir(path)
for i in list:
    print(f"\'assets/{i}\',")