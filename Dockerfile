# Use an official PHP runtime as the base image
FROM php:7.4-cli

# Copy the PHP file to the container
COPY holamundo.php /PHPHOLAMUNDO/holamundo.php

# Set the working directory
WORKDIR /PHPHOLAMUNDO

# Command to run the program
CMD ["php", "holamundo.php"]