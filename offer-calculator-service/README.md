# Offer Calculator Service

This microservice handles all credit offer-related operations within the project. It exposes REST API endpoints for communication with the client and other services.

## Key Features
REST API for credit offer operations

JSON-based responses

Built-in Puma web server

## Dependencies
- Ruby 3.4.0+
- Bundler

## Setup and Installation

1. Configure environment

    ```bash
    bundle config set --local path 'vendor/bundle'
    ```

2. Install dependencies

    ```bash
    bundle install
    ```

3. Run the service

    ```bash
    bundle exec ruby main.rb
    ```

## API Endpoints

| Method | Endpoint     | Description              |
|--------|--------------|--------------------------|
| GET    | `/offers`    | List all offers          |
| GET    | `/offer/:id` | Get offer details        |
| POST   | `/terms`     | Create new offer sorting |
| GET    | `/`          | Health check             |
