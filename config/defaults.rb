# This file can be taken as the main collector configuration file
require 'rest-client'
# require ...  # Include all gem require commands here
Dir.glob("./app/**/*.rb").each {|file| require file}  # This line will include all collector components into the application

# Include global constants here
CONSTANT_1 = 'constant_1'
CONSTANT_2 = 'constant_2'

# Place all the modules include statements here
include Uc6Api
# include ...