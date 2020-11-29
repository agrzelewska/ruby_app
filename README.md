# ruby_app

## Table of Contents

* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)


## General info

The aim of the app is writting a ruby script that:

* Receives a log as argument (webserver.log is provided) e.g.: ./parser.rb webserver.log

* Returns the following:
    - list of webpages with most page views ordered from most pages views to less page views
    e.g.
        - /home 90 visits 
        - /index 80 visits 

    - list of webpages with most unique page views also ordered
    e.g.
        - /about/2 8 unique views
        - /index 5 unique views


## Technologies

Backend is created with:
* Ruby 2.6.6p146


## Setup

To install locally:

```
$ git clone git@github.com:agrzelewska/ruby_app.git
$ cd ruby_app
$ gem install bundler
$ bundle install
$ ruby parser.rb werserver.log
```

To test app:

```
$ rspec
```
