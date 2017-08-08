FROM haskell:8
MAINTAINER Julian Ospald <hasufell@posteo.de>

RUN cabal update && cabal install hakyll

COPY ./run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

EXPOSE 8000

ENTRYPOINT ["run.sh"]
