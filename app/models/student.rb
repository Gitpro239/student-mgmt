class Student < ApplicationRecord
    paginates_per 3
    has_one_attached :profile_image
    # has_one assosciation example 
    has_many :blogs
    # has_many assosciation example
    has_many :posts, dependent: :destroy
    # has_and_belongs_to_many assosciation example
    has_and_belongs_to_many :cources
    # has_many :through assosciation example
    has_many :student_projects
    has_many :projects, through: :student_projects    

    validates :first_name, :last_name, presence: true, length: { minimum:3, maximum: 10 }
    validates :email, presence: true, uniqueness: true
    validates :contact, numericality: true
    validates :address, format: { with: /\A[A-Za-z]+{5}+[0-9]+{2}\z/, message: 'should be 5 alphabates with 2 numbers'}
  
    def self.ransackable_attributes(auth_object = nil)
      [ "first_name", "last_name", "email", "address", "contact", "created_at", "date_of_birth", "id", "last_name", "mob", "updated_at" ]
    end
    
   def self.ransackable_associations(auth_object = nil)
    ["blogs", "cources", "posts", "projects", "student_projects"]
   end
     after_create :display_student_age
     after_update :display_student_age
     after_save :display_student_age
     after_commit :display_student_age

    def display_student_age
      if self.date_of_birth.present?
         age = Date.today.year - date_of_birth.year
         puts "============Age of the student is #{age}================"
      else
        puts "Age can not be calculated without date_of_birth"
      end
    end
    
    def age 
      if self.date_of_birth.present?
        return nil unless date_of_birth.present?
        return Date.today.year - date_of_birth.year
        # instance method use in index and show
      end
    end

    def full_name
      "#{first_name} #{last_name}" # instance method use in index and show
    end

end
