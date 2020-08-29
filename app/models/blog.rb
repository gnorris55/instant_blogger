class Blog < ApplicationRecord
    belongs_to :author, class_name: "User", :dependent => :destroy
end
