#!/bin/bash

# To Decompress the pdf file
# pdftk file.pdf output uncompressed_file.pdf uncompress

# sed 's/<test to remove>/<text to repalce with>/' input.pdf > output.pdf

sed 's/Copyright 2012 Cengage Learning. All Rights Reserved. May not be copied,\\ scanned, or duplicated, in whole or in part. Due to electronic rights, \\some third party content may be suppressed from the eBook and\/or eChapte\\r\\(s\\).//' input.pdf > output.pdf

sed 's/Editorial review has deemed that any suppressed content does not materia\\lly affect the overall learning experience. Cengage Learning reserves th\\e right to remove additional content at any time if subsequent rights re\\strictions require it.//' output.pdf > output2.pdf


# Copyright 2012 Cengage Learning. All Rights Reserved. May not be copied,\ scanned, or duplicated, in whole or in part. Due to electronic rights, \some third party content may be suppressed from the eBook and/or eChapte\r\(s\).

