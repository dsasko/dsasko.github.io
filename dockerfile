# Use Debian as a parent image
FROM jekyll/jekyll:4.2.0

# Set the working directory to /app
WORKDIR /app

# Display Ruby version and bundler version
RUN ruby --version && bundle --version && gem install bundler jekyll

# Make Jeckyll work with ruby v3
# RUN bundle add webrick

# Command to run when the container starts
CMD ["irb"]