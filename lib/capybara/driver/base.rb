class Capybara::Driver::Base
  def current_url
    raise NotImplementedError
  end

  def visit(path)
    raise NotImplementedError
  end

  def find(query)
    raise NotImplementedError
  end

  def evaluate_script(script)
    raise Capybara::NotSupportedByDriverError
  end

  def wait?
    false
  end

  def wait_until *args
  end

  def response_headers
    raise Capybara::NotSupportedByDriverError
  end

  def body
    raise NotImplementedError
  end

  def source
    raise NotImplementedError
  end

  def cleanup!
  end

  def obeys_absolute_xpath
    false
  end

  def has_shortcircuit_timeout
    false
  end

end
