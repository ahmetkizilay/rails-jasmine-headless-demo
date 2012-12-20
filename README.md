# Rails asset pipeline jasmine demo

The goal of this demo is to show how you can run jasmine specs headlessly via the rails asset pipeline.

## Application Javascript

In order to have rails serve both the app code and specs, I put app code under `app/assets/javascripts/application/` and the main `application.js` requires all the files in the application folder.

## Specs

The specs are all in `app/assets/javascripts/specs/` and there is a `app/assets/javascripts/specs.js` which is the main js target for all the specs. It pulls in jasmine and all the specs.


## How it runs

1. There is a `/jasmine-specs` route which loads only in dev and test mode that is similar to Jasmine's SpecRunner.html. See `app/views/jasmine-specs/index.html.erb`
2. A custom reporter that puts the results and output on a window variable. See above step's file for this as well
3. An integration test that visits the page and pulls the results out using capybara and a capybara javascript driver


## Usage

Run `rake` and you should see one fail and two passes. It's a test suite wrapped in a test so the output is pretty wacky.


## Capybara::Jasmine

This is pretty much a re-hash of my `capybara-jasmine` gem, but served via rails instead of a tiny rack app, which is what `capybara-jasmine` uses to run jasmine specs in pure ruby and rake.
