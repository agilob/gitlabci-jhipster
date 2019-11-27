FROM gradle:jdk8
MAINTAINER dockerhub@agilob.net

USER root
RUN  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
	 apt-get install -y nodejs \
		build-essential chrpath libssl-dev maven libxft-dev \
		libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev --no-install-recommends && \
	export PHANTOM_JS="phantomjs-1.9.8-linux-x86_64" && \
	wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
	tar xvjf $PHANTOM_JS.tar.bz2 && \
	mv $PHANTOM_JS /usr/local/share && \
	ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin
