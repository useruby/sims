RSpec.configure do |config|
  if Bullet.enable?
    config.before(:each) do
      Bullet.start_request
    end

    config.after(:each) do
      Bullet.perform_out_of_channel_notifications if Bullet.notification?
      Bullet.end_request
    end
  end
end

def skip_bullet
  Bullet.enable = false
  yield
  Bullet.enable = true
end
