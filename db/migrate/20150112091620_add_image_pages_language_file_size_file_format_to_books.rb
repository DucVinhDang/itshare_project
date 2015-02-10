class AddImagePagesLanguageFileSizeFileFormatToBooks < ActiveRecord::Migration
  def change
    add_column :books, :image, :string
    add_column :books, :pages, :integer
    add_column :books, :language, :string
    add_column :books, :file_size, :integer
    add_column :books, :file_format, :string
  end
end
