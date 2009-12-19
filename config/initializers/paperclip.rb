if (Rails.env.development? || Rails.env.test?)
  Paperclip.options[:command_path] = '/usr/local/bin/'
end