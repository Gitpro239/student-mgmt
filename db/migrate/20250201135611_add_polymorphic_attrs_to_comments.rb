class AddPolymorphicAttrsToComments < ActiveRecord::Migration[8.0]
  def change
    # Polymorphic assosciation example
    add_column:comments, :commentable_type, :string
    add_column:comments, :commentable_id, :integer
    remove_column:comments, :article_id, :integer
    remove_column:comments, :event_id, :integer
    remove_column:comments, :news_id, :integer
  end
end
