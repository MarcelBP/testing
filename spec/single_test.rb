require_relative '../scripts/browserstack.rb'

describe "Load Front Page" do
  it "can find search results" do
    @driver.navigate.to "https://app.dragonlaw.io/"
    sleep 5
    expect(@driver.title).to eql("Login - Dragon Law")
  end
end
