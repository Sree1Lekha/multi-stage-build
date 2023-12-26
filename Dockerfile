FROM python:3-slim AS build-env
WORKDIR /app
COPY . /app

FROM gcr.io/distroless/python3
COPY --from=build-env /app /app
WORKDIR /app
CMD ["hello.py", "hi"]




