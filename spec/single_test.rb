require_relative '../scripts/browserstack.rb'

describe "Load Front Page" do
  it "can find search results" do
    @driver.navigate.to "https://app.dragonlaw.io/"
    element = @driver.find_element(:name, 'email')
    element.send_keys "admin+newrelic@dragonlaw.com.hk"
    sleep 1
    expect(@driver.title).to eql("Login - Dragon Law")
  end
end
