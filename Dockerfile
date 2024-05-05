# Use the official Elixir image based on Alpine Linux from Docker Hub
FROM elixir:alpine

# Install necessary build dependencies
RUN apk add --no-cache build-base

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install Hex package manager and rebar3 build tool
RUN mix local.hex --force && \
    mix local.rebar --force

# Install project dependencies
RUN mix deps.get

# Compile the project
RUN mix compile

# Expose the Phoenix port
EXPOSE 4000

# Run the Phoenix server
CMD ["mix", "phx.server"]
