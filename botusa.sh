if [[ "1" = "$1" ]]; then
  hora=3600
elif [[ "2" = "$1" ]]; then
  hora=7200
elif [[ "3" = "$1" ]]; then
  hora=10800
elif [[ "4" = "$1" ]]; then
  hora=14400
elif [[ "5" = "$1" ]]; then
  hora=18000
elif [[ "6" = "$1" ]]; then
  hora=21600
else
  echo "Error: solo se puede establecer de 1 a 6 horas, aplicando cambios automáticos..."
  echo "Inicie de nuevo el código"
fi

apt install git -y

sed -i "s/hori/$hora/g" .github/workflows/MirrorSC.yml
sed -i "s/horo/$1/g" .github/workflows/MirrorSC.yml

git add -f .
git commit -m "Activando: $1 horas,numero de activacion: $random"
git push
sleep 10
rm -rf .github/workflows/MirrorSC.yml
cp .github/MirrorSCb.yml .github/workflows/MirrorSC.yml
exit