#!/bin/bash

for file in *.md;do
    sed -ri 's|(\!\[\[Pasted\ image\ )|![](https://github.com/AndreyZhelannikov/s21_linux/blob/develop/Attachemnts/Pasted%20image%202|g' "$file";
    sed -ri 's|(\]\])|)|g' "$file";
done;
