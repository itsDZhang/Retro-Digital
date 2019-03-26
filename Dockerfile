FROM starefossen/ruby-node:2-8-stretch

RUN apt-get update -qq && \
    apt-get install -y nano build-essential libpq-dev && \
    gem install bundler

RUN mkdir /project
# Look at the files you're copying and compare its hashes
COPY Gemfile  Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY . /project


# Pull the Ruby + Node image from Docker hub.
# Update the libraries within the image.
# Install the nano editor, build tools, and library for Postgres.
# Install Bundler which will update existing Bundler.
# Create a folder for your project.
# Copy Gemfile and Gemfile.lock from host to app folder.
# Set the working directory to the app folder.
# Run bundle install inside the project folder. This will install necessary gems inside the container.
# Copy rest of the content from your host folder to container app folder.