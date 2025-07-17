# Stage 1: Build dependencies
FROM node:22.14-alpine AS deps
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN corepack enable && pnpm install --frozen-lockfile

# Stage 2: Copy and run app
FROM node:22.14-alpine
WORKDIR /app
RUN corepack enable
COPY --from=deps /app/node_modules ./node_modules
COPY package.json ./
COPY src ./src

CMD ["/bin/sh", "-c", "if [ \"$ENV\" = 'production' ]; then pnpm start; else pnpm start:dev; fi"]
