RSpec.configure do |config|
  config.before(:each) do |example|
    if example.metadata[:type] == :system
      driven_by :selenium_chrome_headless, screen_size: [1400, 1400]
    end
  end
end
