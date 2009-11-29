Factory.define(:work) do |f|
  f.title "Mona Lisa"
  f.image  ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, "test", "fixtures", "baby.jpg"))
end

Factory.define(:user) do |f|
  f.sequence(:email) { |n| "example#{n}@example.com" }
  f.password "test"
  f.password_confirmation "test"
end