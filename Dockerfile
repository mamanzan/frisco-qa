#FROM cypress/included:3.2.0
#WORKDIR /usr/src/app
#COPY package.json ./

# RUN npm config set proxy http://proxy-dmz.intel.com:911
# RUN npm config set proxy http://proxy-chain.intel.com:911
# RUN npm config set https-proxy http://proxy-chain.intel.com:912
# RUN npm config set strict-ssl false

# RUN set NO_PROXY=*.intel.com,localhost,127.0.0.1
# RUN set HTTP_PROXY=http://proxy-chain.intel.com:911
# RUN set HTTPS_PROXY=http://proxy-chain.intel.com:912

#RUN npm install
#COPY ./ ./
# RUN npm run test:all


#https://medium.com/@zite/so-you-want-to-get-cypress-running-in-docker-7e8fb2837731

FROM cypress/base:10

ENV NO_PROXY *.intel.com,localhost,127.0.0.1
ENV HTTP_PROXY http://proxy-chain.intel.com:911
ENV HTTPS_PROXY http://proxy-chain.intel.com:912
ENV http_proxy http://proxy-chain.intel.com:911
ENV https_proxy http://proxy-chain.intel.com:912
#ENV key=value

#RUN apt-get update && apt-get install cntlm -y

RUN apt-get update -qq && apt-get install -y \
	unzip \
	wget \
	ca-certificates

RUN mkdir -p /usr/local/share/ca-certificates/intel
RUN cd /usr/local/share/ca-certificates/intel
RUN wget -qO- -O tmp.zip http://certificates.intel.com/repository/certificates/Intel%20Root%20Certificate%20Chain%20Base64.zip && unzip tmp.zip && rm tmp.zip
RUN wget -qO- -O tmp.zip http://certificates.intel.com/repository/certificates/Public%20Root%20Certificate%20Chain%20Base64.zip && unzip tmp.zip && rm tmp.zip
RUN wget -qO- -O tmp.zip http://certificates.intel.com/repository/certificates/IntelSHA2RootChain-Base64.zip && unzip tmp.zip && rm tmp.zip
RUN wget -qO- -O tmp.zip http://certificates.intel.com/repository/certificates/PublicSHA2RootChain-Base64.zip && unzip tmp.zip && rm tmp.zip
RUN update-ca-certificates


RUN npm config set proxy http://proxy-chain.intel.com:911

COPY package.json package.json
RUN npm install

COPY ./cypress ./cypress
COPY ./cypress.json ./cypress.json

CMD ["npm","run","cypress-ntlm-linux"]



#RUN npm install
#COPY ./ ./
# RUN npm run test:all