module Helpers
  def media_path
    settings.root + '/media'
  end

  def to_li( string )
    "%li #{ string.gsub('_', ' ') }"
  end

  def remove_dot_dirs( string_array )
    string_array.reject {|string| string == '.' || string == '..'}
  end

  def underscores_to_whitespace( string )
    string.gsub('_', ' ')
  end

  def gen_dir_list( string_array )
    string_array = remove_dot_dirs( string_array )
  end
end
