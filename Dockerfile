FROM node:20.18.0-slim

ENV APIFOX_ACCESS_TOKEN=APS-xxxxxx
ENV APIFOX_SCENARIO_ID=123456
ENV APIFOX_ENVIRONMENT=123456
ENV APIFOX_REPORTERS=html,cli
ENV APIFOX_ITERATION_COUNT=1

# Add Tini
# ENV TINI_VERSION v0.19.0
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static /tini-static
COPY tini-static .

COPY docker-entrypoint.sh .

RUN npm install -g "apifox-cli@latest" --registry=https://registry.npmmirror.com

ENTRYPOINT ["/tini-static", "--"]

CMD ["/docker-entrypoint.sh"]

