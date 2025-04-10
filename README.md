# Assembly

Jou jou jou


## Bash script na assemble link execute a remove
```
#!/bin/bash
subor=$1
temp="${subor::-4}"

nasm -f elf64 $temp.asm -o $temp.o
ld $temp.o -o $temp
./$temp

rm $temp.o $temp
```

