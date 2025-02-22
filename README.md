# EasyBrokerViewer

EasyBrokerViewer is a Rails 8 application that consumes the EasyBroker API to fetch and display properties data. The project **does not use a database**, as all information is retrieved directly from the API. The user interface is built using **Tailwind CSS** and **Flowbite components**, offering a modern and responsive design.

## Using GitHub Codespaces

We recommend using GitHub Codespaces for this project to avoid managing dependencies on your local machine. With Codespaces, you can quickly set up a fully configured development environment in the cloud.

1. Click the green **Code** button at the top of the repository.
2. Select **Open with Codespaces**.
3. If you don’t see an existing Codespace, click **New Codespace**.
4. Wait for the environment to build and open. This may take a few minutes.
5. Once the Codespace is ready, you’ll be able to work on the project immediately, without having to set up anything locally.

## Features

- **API Consumption:** Integrates and fetches data from an external API in real time.
- **Modern Interface:** Clean and responsive UI built with Tailwind CSS and Flowbite.
- **Rails 8:** Leverages the latest features and improvements of Rails.
- **No Database:** All data is fetched from the API, so there is no need to set up a database.

## Requirements

If you choose to set up the project locally instead of using a Codespace, you’ll need the following:

- **Ruby:** Version 3.4.x or higher.
- **Rails 8**
- **Bundler:** For installing Ruby gems.

## Installation

Clone the repository:

```bash
git clone https://github.com/omar10594/EasyBrokerViewer.git
cd EasyBrokerViewer
```

Install the Ruby dependencies:

```bash
bundle install
```

### Environment Variables

To configure the environment variables, follow these steps:

- Locate the `env_example` file in the root directory of the project.
- Make a copy of `env_example`.
- Rename the copy to `.env`.
- Open the newly created `.env` file and replace the placeholder values with the correct settings for your environment.

## Usage

Start the development server:

```bash
rails server
```

Then open your browser and visit [http://localhost:3000](http://localhost:3000) to see the app in action.

## Technologies Used

- **Ruby on Rails 8**
- **Tailwind CSS**
- **Flowbite**

## License

This project **does not currently have a license**. Please reach out if you wish to use or modify it.
