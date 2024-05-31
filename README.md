# DuckDuckGoose

This is a Duck Duck Goose service. This service starts multiple node instances in different ports to create multiple Ducks and 1 Goose. 

### How it works?

The server was created to always hold always 1 goose. If the number of running nodes is 1 this will always be a goose.

### Set up and run
To set up and run the DuckDuckGoose service using Docker and Phoenix, follow these steps:
1. Make sure you have Docker installed on your machine.
2. Clone the repository to your local machine:
  ```
  git clone https://github.com/xsami/duckDuckGoose.git
  ```
3. Navigate to the project directory:
  ```
  cd duckDuckGoose
  ```
4. Build the Docker image and start the container:
  ```
  docker-compose up --build
  ```
5. Once the container is up and running, you can access the service at [`localhost:4000`](http://localhost:4000) from your browser.

To run the project without Docker using Mix, follow these steps:

1. Make sure you have Elixir and Phoenix installed on your machine.
2. Clone the repository to your local machine:
  ```
  git clone https://github.com/xsami/duckDuckGoose.git
  ```
3. Navigate to the project directory:
  ```
  cd duckDuckGoose
  ```
4. Install dependencies:
  ```
  mix deps.get
  ```
5. Set up the database:
  ```
  mix ecto.setup
  ```
6. Start the Phoenix server:
  ```
  mix phx.server
  ```
7. Once the server is up and running, you can access the service at [`localhost:4000`](http://localhost:4000) from your browser.

Note: If you encounter any issues during the setup process, please refer to the project's documentation or open an issue on the repository.


### Contributing
Contributions are welcome! If you have any ideas, suggestions, or bug reports, please open an issue or submit a pull request.
