require_relative '../../support/mobile/platform/platforms'

class MobSite
  extend Mobile::Platform
  extend PageObject::Accessors

  def initialize(selenium_driver)
    @driver = selenium_driver
  end

  web do
    button(:search_icon, id: 'header_btn_search')
    text_field(:search, id: 'edit-keys')
    button(:search_button, id: 'edit-submit')
  end
end