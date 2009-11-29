class Test::Unit::TestCase
  def self.should_be_denied
    should "have error message to login" do
      assert_contain "You must be logged in"
    end

    should "redirect to login" do
      assert_equal login_url, current_url
    end
  end

  def self.should_be_not_authorized
    should "have error message about authorization" do
      assert_contain "do not have permission"
    end

    should "redirect to the user's dashboard" do
      assert_equal dashboard_url, current_url
    end
  end

  def self.should_link_to(string)
    should "link to #{string}" do
      url = instance_eval string
      assert_select "a[href=?]", url
    end
  end

  def self.should_not_link_to(string)
    should "not link to #{string}" do
      url = instance_eval string
      assert_select "a[href=?]", url, false
    end
  end
  def self.should_contain(string = nil, &block)
    should "contain '#{string}'" do
      string = instance_eval &block if block_given?
      assert_contain string
    end
  end

  def self.should_not_contain(string = nil, &block)
    should "not contain '#{string}'" do
      string = instance_eval &block if block_given?
      assert_not_contain string
    end
  end

  def self.should_be_visiting(url = nil, &block)
    should "be visiting #{url}" do
      url = instance_eval &block if block_given?
      assert_match url, current_url
    end
  end

  def self.should_be_logged_in_as(&block)
    should_contain("my name in the header") do
      user =  instance_eval &block if block_given?
      "Logged in as: #{user.name}"
    end
  end
end
