require "selenium-webdriver"

class Product < ApplicationRecord
  def self.proxy
    Selenium::WebDriver::Chrome.driver_path = "/home/shizuka/apps/MyApp/chromedriver"
    proxy = Selenium::WebDriver::Proxy.new(http: 'Selkylekmarketing:L1i3JyN@191.101.148.144:45785')
    cap   = Selenium::WebDriver::Remote::Capabilities.chrome(proxy: proxy)
    options = Selenium::WebDriver::Chrome::Options.new(args: ['-headless'])
    driver = Selenium::WebDriver.for(:chrome, capabilities: [cap, options])
    driver.get('http://google.com')
  end
end
