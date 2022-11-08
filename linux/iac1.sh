#!/bin/bash

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando diretórios dos grupos..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando usuários e associando aos grupos..."

useradd sergio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd eduardo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd daniel -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd cristina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd laura -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd wellyton -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd lucas -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd fernanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd victor -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Definindo permissões de diretórios para os grupos..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Sucesso! Todas as configurações aplicadas!"
