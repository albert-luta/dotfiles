#!/bin/bash

gpg --batch --gen-key <<EOF
%no-protection
Key-Type: RSA
Key-Length: 4096
Subkey-Type: RSA
Subkey-Length: 4096
Name-Real: Albert Luta
Name-Email: github.7ntgj@simplelogin.co
Expire-Date: 0
EOF

