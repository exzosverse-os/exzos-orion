FROM oven/bun:1.1.38 AS base
WORKDIR /app

COPY . .

RUN bun install --frozen-lockfile
RUN bun run build:website

ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

CMD ["bun", "run", "start:website"]
