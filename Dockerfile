FROM rust:1.47

WORKDIR app

# Copy all files from our working environment to our Docker image
COPY . .

ENV SQLX_OFFLINE true

RUN cargo build --release

ENV APP_ENVIRONMENT production

ENTRYPOINT [ "./target/release/zero2prod" ]
