#! /usr/bin/env python

import os

with open('variante_o_foranea.sql', 'r') as f:
	lines = f.readlines()
	count = 0
	index = 0
	for line in lines:
		count += 1
		index += 1
		if 'INSERT INTO' not in line :
			continue
		if count == 2:
			line = line[:-2] + ',\n'
			lines[index - 1] = line
			continue
		line = '\t' + line[41:-2] + ',\n'
		if count % 250 == 0:
			line = line[:-2]
			line = line + ';\n'

		lines[index - 1] = line
		if count % 250 == 0:
			lines.insert(index, '\n')
			count = 0

with open('variante_o_foranea-mdf.sql', 'w') as f:
	for line in lines:
		f.write(line)
