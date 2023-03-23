class Article < ApplicationRecord
  belongs_to :user

  def author
    user.username
  end

  def preview
    content.split("\n")[1]
  end

  def date
    created_at.strftime('%B %e, %Y')
  end

  class CreateArticles < ActiveRecord::Migration[6.1]
    def change
      create_table :articles do |t|
        t.string :title
        t.text :content
        t.timestamps
      end
    end
  end
  

end
