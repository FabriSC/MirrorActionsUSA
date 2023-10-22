$GIT=`pwd`.github/workflows
echo "Iniciando el bot..."
if [[ "$1" = "1" ]]; then
$hora=3600
fi
if [[ "2" = "$1" ]]; then
$hora=7200
fi
if [[ "3" = "$1" ]]; then
$hora=10800
fi
if [[ "4" = "$1" ]]; then
$hora=14400
fi
if [[ "5" = "$1" ]]; then
$hora=18000
fi
if [[ "6" = "$1" ]]; then
$hora=21600
else
echo "Error: solo se puede establecer de 1 a 6 horas, aplicando cambios automaticos..."
echo "inicie de nuevo el codigo"
fi

apt install git -y

sed -i "s/hori/$hora/g" .github/workflows/MirrorSC.yml
sed -i "s/horis/$1/g" .github/workflows/MirrorSC.yml

git add -f .
git commit -m "Activando: $1 horas,numero de activacion: $random"
exit