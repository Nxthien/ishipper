namespace :db do
  desc "Import data"
  task :remake_data do
    Rake::Task["db:users"].invoke
    Rake::Task["db:invoices2"].invoke
    Rake::Task["db:user_invoices"].invoke
    Rake::Task["db:update_status"].invoke
    Rake::Task["db:favorite_lists"].invoke
  end
end
