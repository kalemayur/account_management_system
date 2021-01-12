puts 'looking up Super_admin ...'
unless Admin.where(email: 'admin@admin.com').exists?
  puts 'not found'
  puts 'creating one...'
  admin = Admin.new(email: 'admin@admin.com')
  admin.password = 'admin@123'
  admin.save!
end