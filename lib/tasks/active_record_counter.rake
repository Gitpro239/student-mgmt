namespace :active_record_counter do
  desc "Display the count of student model"
  task students_count: :environment do
    puts "Students Count = #{Student.count}"
  end

  desc "Display the count of cource model"
  task cources_count: :environment do
    puts "Cources Count = #{Cource.count}"
  end

  desc "Display the count of blog model"
  task blogs_count: :environment do
    puts "Blogs Count = #{Blog.count}"
  end

end
