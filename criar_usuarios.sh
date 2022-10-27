#! /bin/bash

echo "Script Gerenciamento de Usuarios"
echo "Esses script irá criar os usuarios e inseri-los em seus devidos grupos"
echo "" 

echo "-------------------------------"
# Criando as pastas dos usuarios
#
echo ""
echo "**** Criando Pastas ****"
cd /
mkdir /publico /adm /ven /sec
echo "" 
echo "**** Pastas OK ****"
echo ""
echo "-------------------------------"
# Criando os grupos de usuarios
#
echo ""
echo "**** Criando Grupos ****"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "" 
echo "**** Grupos OK ****"
echo ""
echo "-------------------------------"
# Criando os usuarios
#
echo ""
echo "**** Criando Usuarios ****"

useradd carlos -c "Carlos Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "João Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd joao -e
#
#
#
useradd debora -c "Debora Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd roberto -e
#
#
#
useradd josefina -c "Josefina Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda Salles" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio Fulano" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd rogerio -e

echo "" 
echo "**** Usuarios OK ****"
echo ""
echo "-------------------------------"
# aplicando permissões
#
echo ""
echo "**** Aplicando Permissões ****"

cd /
chmod 777 /publico/

chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

echo "" 
echo "**** Permissões OK ****"
echo ""
echo "--------------------------------"
echo ""
echo "**** Script finalizado ****"
echo "" 
echo "-----------------------------------------------------------------"
echo "|os usuarios foram criados e devem alterar sua senha no 1º logon|"
echo "|senha padrão dos usuarios criados é: senha123                  |"
echo "-----------------------------------------------------------------"
echo ""
echo ""




