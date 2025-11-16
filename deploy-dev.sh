#!/bin/bash
echo "Iniciando deploy no ambiente de desenvolvimento"
scp build/libs/TP3_PB-2.0-SNAPSHOT.jar user@devserver:/app/
ssh user@devserver "systemctl restart biblioteca-app"
echo "Deploy concluído."
