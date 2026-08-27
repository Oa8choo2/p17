# Invisble characters

See https://www.editpad.org/tool/invisible-character

/tmp tmp $ vi inv
/tmp tmp $ cat inv 
#!/bin‎/bash

echo lol 
/tmp tmp $ bash inv 
lol
/tmp tmp $ od -a  inv 
0000000   #   !   /   b   i   n   b nul  so   /   b   a   s   h  nl  nl
0000020   e   c   h   o  sp   l   o   l  sp  nl
0000032
/tmp tmp $ vi inv
/tmp tmp $ cat inv 
#!/bin‎/bash

ec‎ho lol 
/tmp tmp $ od -a  inv 
0000000   #   !   /   b   i   n   b nul  so   /   b   a   s   h  nl  nl
0000020   e   c   b nul  so   h   o  sp   l   o   l  sp  nl
0000035
/tmp tmp $ bash inv 
inv: regel 3: ec‎ho: opdracht niet gevonden

What it really looks like:

```bash
 /tmp tmp $ cat inv 
  #!/bin<200e>/bash
  
  ec<200e>ho lol 
```

the shebang is not really executed, so that gives no trouble
echo is executed and the <200e> causes that command to fail 
