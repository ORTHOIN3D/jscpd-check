FROM node:16-alpine

LABEL "maintainer" = "Aurélien Moreau <aurelien.moreau@yienyien.net>"

ADD entrypoint.sh /entrypoint.sh
ADD package.json /package.json
ADD yarn.lock /yarn.lock
RUN yarn install

ENV PATH="/node_modules/.bin:${PATH}"

ENTRYPOINT ["/entrypoint.sh"]
