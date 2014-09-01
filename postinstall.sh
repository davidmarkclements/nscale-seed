mv seed-package.json package.json

if [ -d ../../node_modules ]
then cd ../.. && mv node_modules/nscale-seed .
fi

if [ ! -d node_modules/* ]
then rm -fr node_modules
fi