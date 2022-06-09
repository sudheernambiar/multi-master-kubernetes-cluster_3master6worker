my_doc = open("output",'r')
content = my_doc.read()
content = content.split(',')
mast_string = ''
node_string = ''
mast = open("master_string", 'w')
slav = open("slave_string", 'w')
for item in content:
    if '"  kubeadm join ' in item:
        ind = content.index(item)
        mast_string = content[ind] + content[ind + 1] + content[ind + 2]
        mast_string = mast_string.replace('\\', " ")
        mast_string = mast_string.replace('t--', "--")
        mast_string = mast_string.replace('" "', "")
        mast_string = mast_string.lstrip('"  ')
        mast_string = mast_string.rstrip('"')
        mast.write(mast_string)
        print(mast_string)

for item in content:
    if '"kubeadm join' in item:
        ind = content.index(item)
        node_string = content[ind] + content[ind + 1]
        node_string = node_string.replace('\\', " ")
        node_string = node_string.replace('t--', "--")
        node_string = node_string.replace('" "', "")
        node_string = node_string.rstrip('"]')
        node_string = node_string.lstrip(' "')
        slav.write(node_string)
        print(node_string)
my_doc.close()
mast.close()
slav.close()
