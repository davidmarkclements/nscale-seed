mv seed-package.json package.json

if [ -d ../../nscale-seed ]
then echo "nscale-seed already exists!" && exit 1
fi

if [ -d ../../node_modules/nscale-seed ]
then cd ../.. && mv node_modules/nscale-seed .
fi

if [ ! "$(if [ -d node_modules ]; then ls -A node_modules; fi)" ]
then rm -fr node_modules
fi
