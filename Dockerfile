FROM directus/directus:11.17.3

USER root
RUN corepack enable && corepack prepare pnpm@latest --activate
USER node

WORKDIR /directus
COPY ./extensions/package.json ./extensions/
RUN cd extensions && pnpm install