# FlickrApi

## Introduction

`FlickrApi` is a Ruby on Rails application designed to interact with the Flickr API and display photos. It includes a controller (`StaticPagesController`) that fetches and displays photos based on user input.

## Features

- **Dynamic Photo Loading:** The application dynamically loads photos based on user input, either displaying photos for a specific user or recent photos if no user is specified.

- **Error Handling:** In case of a failed response from the Flickr API, the application gracefully handles the error, displaying a user-friendly alert to inform users that the specified user was not found or does not exist.

- **Flickr API Integration:** Utilizes the Flickr gem to seamlessly interact with the Flickr API, making it easy to retrieve and display photos.

## Getting Started

To use this application, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/FlickrApi.git
    ```

2. Install dependencies:

    ```bash
    cd FlickrApi
    bundle install
    ```

3. Set up your Flickr API keys:

   Add your Flickr API key and secret to your Rails application's environment variables.

    ```ruby
    # config/application.yml
    FLICKR_API_KEY: # Your Flickr API key here
    FLICKR_SHARED_SECRET: # Your Flickr API secret key here
    ```

4. Run the Rails server:

    ```bash
    rails server
    ```

5. Open your browser and navigate to [http://localhost:3000](http://localhost:3000) to view the application.

## Usage

1. Visit the home page [http://localhost:3000](http://localhost:3000).
2. Enter a Flickr user ID in the provided input field and submit the form.
3. Explore the displayed photos from the specified user or recent photos if no user is specified.

## Contributing

We welcome contributions to enhance the functionality and features of `FlickrApi`. Feel free to fork the repository, make your improvements, and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
