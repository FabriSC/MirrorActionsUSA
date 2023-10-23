if [[ "1" = "$1" ]]; then
  hora=60
elif [[ "2" = "$1" ]]; then
  hora=120
elif [[ "3" = "$1" ]]; then
  hora=180
elif [[ "4" = "$1" ]]; then
  hora=240
elif [[ "5" = "$1" ]]; then
  hora=300
elif [[ "6" = "$1" ]]; then
  hora=360
else
  echo "Error: solo se puede establecer de 1 a 6 horas, aplicando cambios automáticos..."
  echo "Inicie de nuevo el código"
  exit
fi

apt install git -y

sed -i "s/hori/$hora/g" .github/workflows/MirrorSC.yml
sed -i "s/horo/$1/g" .github/workflows/MirrorSC.yml

git add -f .
git commit -m "Activando: $1 horas,numero de activacion: $RANDOM"
git push
sleep 10
rm -rf .github/workflows/MirrorSC.yml
cp .github/MirrorSCb.yml .github/workflows/MirrorSC.yml
exit