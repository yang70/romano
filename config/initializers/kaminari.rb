# Fix for rails_admin and will_paginate, per: https://github.com/sferik/rails_admin/wiki/Troubleshoot
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari
end
