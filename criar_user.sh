#!/bin/bash

# Variáveis
GRUPOS=("GRP_ADM" "GRP_VEN" "GRP_SEC")
USUARIOS_ADM=("carlos" "maria" "joao")
USUARIOS_VEN=("debora" "sebastiana" "roberto")
USUARIOS_SEC=("josefina" "amanda" "rogerio")
DIR_PUBLICO="/publico"
DIR_ADM="/adm"
DIR_VEN="/ven"
DIR_SEC="/sec"

# Excluindo diretórios, grupos e usuários criados anteriormente
echo "Removendo diretórios, grupos e usuários antigos..."
rm -rf $DIR_PUBLICO $DIR_ADM $DIR_VEN $DIR_SEC
for user in "${USUARIOS_ADM[@]}" "${USUARIOS_VEN[@]}" "${USUARIOS_SEC[@]}"; do
    userdel -r $user
done
for grupo in "${GRUPOS[@]}"; do
    groupdel $grupo
done

# Criando diretórios
echo "Criando diretórios..."
mkdir $DIR_PUBLICO $DIR_ADM $DIR_VEN $DIR_SEC

# Criando grupos
echo "Criando grupos de usuários..."
for grupo in "${GRUPOS[@]}"; do
    groupadd $grupo
done

# Criando usuários e atribuindo grupos
echo "Criando usuários e atribuindo grupos..."
for user in "${USUARIOS_ADM[@]}"; do
    useradd -m -s /bin/bash -G GRP_ADM $user
done
for user in "${USUARIOS_VEN[@]}"; do
    useradd -m -s /bin/bash -G GRP_VEN $user
done
for user in "${USUARIOS_SEC[@]}"; do
    useradd -m -s /bin/bash -G GRP_SEC $user
done

# Definindo dono dos diretórios
echo "Definindo dono dos diretórios..."
chown root:GRP_ADM $DIR_ADM
chown root:GRP_VEN $DIR_VEN
chown root:GRP_SEC $DIR_SEC

# Definindo permissões dos diretórios
echo "Definindo permissões dos diretórios..."
chmod 770 $DIR_ADM
chmod 770 $DIR_VEN
chmod 770 $DIR_SEC
chmod 777 $DIR_PUBLICO

echo "Configuração concluída com sucesso!"
