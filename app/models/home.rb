class Home < ActiveRecord::Base

has_attached_file :banner1, styles: { medium: ["300x300>", :jpg, :quality => 70], 
                   square: ["200x200>", :jpg, :quality => 70], thumb: 
                   ["100x100>", :jpg, :quality => 70],  large:  
                   ['500x500>', :jpg, :quality => 70] }


has_attached_file :banner2, styles: { medium: ["300x300>", :jpg, :quality => 70], 
                   square: ["200x200>", :jpg, :quality => 70], thumb: 
                   ["100x100>", :jpg, :quality => 70],  large:  
                   ['500x500>', :jpg, :quality => 500] }

validates_attachment_content_type :banner1, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
validates_attachment_content_type :banner2, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end