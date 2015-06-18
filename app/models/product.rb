class Product < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


def self.search(search)
  if search
    where('productname LIKE ?', "%#{search}%")
  else
    @product = Product.all
  end
end


# def search(search)
#   if search
#     find(:all, :conditions => ['productname LIKE ?', "%#{search}%"])
#   else
#     find(:all)
#   end
# end


  
end
