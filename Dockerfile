FROM node:16-alpine

LABEL "maintainer" = "Aurélien Moreau <aurelien.moreau@yienyien.net>"

ADD entrypoint.sh /entrypoint.sh
RUN yarn add jscpd@3.3.26

ENV PATH="/node_modules/.bin:${PATH}"

ENTRYPOINT ["/entrypoint.sh"]
