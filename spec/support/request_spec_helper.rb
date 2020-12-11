module RequestSpecHelper
  def get_default_headers
    {
      HTTP_ACCEPT:  'application/json',
      ACCEPT:       'application/json',
      CONTENT_TYPE: 'application/json',
      HOST:         'api.cocoda-design.com'
    }
  end
end

RSpec.configure do |config|
  config.include RequestSpecHelper, type: :request
end
