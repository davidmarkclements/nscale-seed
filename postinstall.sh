mv seed-package.json package.json

if [ -d ../../nscale-seed ]
then echo "nscale-seed already exists!" && exit 1
fi

if [ -d ../../node_modules/nscale-seed ]
then cd ../.. && mv node_modules/nscale-seed .
fi

if [ ! "$(ls -A node_modules)" ]
then rm -fr node_modules
fi

sleep 10

rm postinstall.sh