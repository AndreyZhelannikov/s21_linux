#!/bin/bash

for file in *.md;do
    sed -ri 's|(\!\[\[Pasted\ image\ )|![](https://github.com/andreyzhelannikov/s21_linux/blob/develop/Attachemnts/Pasted%20image%20|g' "$file";
    sed -ri 's|(\]\])|)|g' "$file";
done;