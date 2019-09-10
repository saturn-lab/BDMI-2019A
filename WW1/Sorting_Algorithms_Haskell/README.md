Installing dependencies
=======================
1. First you should have `cabal install`. To get it you can run under Ubuntu

    sudo aptitude install cabal-install

Or you can visit (http://hackage.haskell.org/trac/hackage/wiki/CabalInstall)[Cabal page] for more instructions

After installing `cabal install` you should run

    cabal update

Also it might propose you too install a new version of itself. You can do it by runnung

    cabal install cabal-install

2. Next you should install HUnit

    cabal install HUnit

You can skip this step if you dont want to run tests
Downloaded from https://github.com/kunik/sorting-algorithms