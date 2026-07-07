#!/bin/bash

# ==============================================================================;
# garanta permissão de execução (uma única vez): chmod +x connect_vpn_dolp.sh;
# execute: sudo ./connect_vpn_dolp.sh;
# ==============================================================================;

sudo openfortivpn \
  177.107.40.218:20443 \
  -u ti.dolp.arthur \
  --trusted-cert 35a43b39cf5e5704411b536192dbe4a32be911dd6659e8ecc6c75ec98d002f2d

