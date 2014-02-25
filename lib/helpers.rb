module Helpers
  def media_path
    settings.root + '/media'
  end

  def to_li( string )
    "%li #{ string.gsub('_', ' ') }"
  end

  def remove_dot_dirs( string_array )
    string_array.reject {|string| string =~ /^\..*/ }
  end

  def underscores_to_whitespace( string )
    string.gsub('_', ' ')
  end

  def gen_dir_list( string_array )
    string_array = remove_dot_dirs( string_array )
  end

  def snake_to_title( snake_str )
    title = underscores_to_whitespace( snake_str )
    title.prepend(title.slice!(0).swapcase)
  end
end
