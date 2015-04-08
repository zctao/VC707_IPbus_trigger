import os
f = open('Tracklet_processing.v')
g = open('tmp.txt','w')
counter = 0
for line in f:
 if 'io_rd_data_R3_io_block' in line:
  string=line.replace('io_rd_data_R3_io_block','io_rd_data_'+str(counter))
  counter = counter + 1
  g.write(string)
 else:
  g.write(line)
 
for i in range(0,counter):
 g.write('wire [31:0] io_rd_data_'+str(i)+';\n')