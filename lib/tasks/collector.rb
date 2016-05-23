#!/usr/bin/env ruby
require './config/defaults'  # Require the main configuration file here

# Initialize the application logger
logger = Module::init_logger  #  Module method that initializes the global logger

logger.info 'Initializing collector...'  # Include an initialization message here

# Always wrap the main execution of the collector into a begin..rescue block
begin
  # Do all commands of the collector here
rescue Exception => e
  # Display the original error message plus an indication that the collector breaks the execution
  logger.error e
  logger.error 'Collector aborted'
end