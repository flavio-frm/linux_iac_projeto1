#! /bin/bash

echo "Script Gerenciamento de Usuarios"
echo "Esses script irá criar os usuarios e inseri-los em seus devidos grupos"

echo "-------------------------------"
# Criando as pastas dos usuarios
#
echo "**** Criando Pastas ****"
cd /
mkdir /publico /adm /ven /sec

echo "-------------------------------"
# Criando os grupos de usuarios
#
echo "**** Criando Grupos ****"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "-------------------------------"


# Criando os usuarios
#
echo "**** Criando Usuarios ****"

useradd carlos -c "Carlos Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwd joao -e
#
#
#
useradd debora -c "Debora Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwd roberto -e
#
#
#
useradd josefina -c "Josefina Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Salles" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Fulano" -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwd rogerio -e

echo "-------------------------------"
# aplicando permissões
#
echo "**** Aplicando Permissões ****"

cd /
chmod 777 /publico/

chown root:GRP_ADM /adm/
chmod 770 /adm

chown root:GRP_VEN /ven/
chmod 770 /ven

chown root:GRP_SEC /sec/
chmod 770 /sec

echo "**** Script finalizado ****"
echo " "
echo "os usuarios foram criados e devem alterar sua senha no 1º logon"
echo "senha padrão dos usuarios criados é:"
echo "senha123"


