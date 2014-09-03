Before do
 Capybara.register_driver :selenium do |app|
  case ENV['BROWSER']
  when 'ie', 'IE'
    Capybara::Selenium::Driver.new(app, browser: :ie)
  when 'ff'
    Capybara::Selenium::Driver.new(app, browser: :ff)
  when 'chrome'
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  when 'safari'
    Capybara::Selenium::Driver.new(app, browser: :safari)
  else
    Capybara::Selenium::Driver.new(app, browser: :ff)
  end
 end
end

After do |scenario|
 if scenario.failed?
   path = "screenshot#{Time.now.strftime('%Y_%m_%d-%HH_%MM_%SS')}.png"
   page.driver.browser.save_screenshot(path)
 end
end

