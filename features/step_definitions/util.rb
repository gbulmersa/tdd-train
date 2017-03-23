require 'rbconfig'


class Util
    @@is_windows = (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
    @@headless =  if !@@is_windows then 
        puts "Creating headless..."
        Headless.new.start 
    end
    #@@browser

    def self.load_page(url_to_load)
        puts "is_windows: #{@@is_windows}"
        puts "Creating firefox driver..."
        browser = Selenium::WebDriver.for :firefox

        puts "Navigating to rn.html..."
        browser.navigate.to url_to_load
        wait = Selenium::WebDriver::Wait.new(:timeout => 7)     
        return browser   
    end

    def self.clean_up(browser)
        browser.quit
        if !@@is_windows then
            @@headless.destroy
        end
    end

end