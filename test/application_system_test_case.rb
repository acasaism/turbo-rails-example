require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  # If you don't want the browser open, change :chrome with :headless_chrome
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
