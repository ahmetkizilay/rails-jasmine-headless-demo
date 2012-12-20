require 'test_helper'

class JasmineSpecsTest < ActionDispatch::IntegrationTest
  test "jasmine" do
    Capybara.current_driver = Capybara.javascript_driver
    visit '/jasmine-specs'
    wait_until { evaluate_script("window.reporter && window.reporter.done") }
    success = evaluate_script("window.reporter.clean")
    output = CGI.unescape evaluate_script("window.reporter.output")
    flunk output unless success
  end
end
