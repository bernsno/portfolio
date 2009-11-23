Factory.define(:work) do |f|
  f.title "Mona Lisa"
  f.image  ActionController::TestUploadedFile.new(File.join(RAILS_ROOT, "test", "fixtures", "baby.jpg"))
end