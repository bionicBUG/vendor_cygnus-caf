#!/bin/bash

# Example of creating Cygnus subject file
# $ '/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com' > cygnus

export cygnus=`cat cygnus`
for x in releasekey platform shared media; do \
    ../../../../../../development/tools/make_key ./$x "$cygnus"; \
done
