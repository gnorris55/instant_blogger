class User < ApplicationRecord
    has_many :blogs, foreign_key: "author_id", :dependent => :destroy
end
