# NextJS with Docker

A simple proof of concept with NextJS + Docker.

## How to build the project

- Build Docker image with `docker build -t nextjs-docker-poc .`

## How to run Development

### Running with Docker

Run the dockerized project:

```bash
docker-compose up -d
# or
docker-compose up
```

### Running without Docker

Run the development server:

```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!
