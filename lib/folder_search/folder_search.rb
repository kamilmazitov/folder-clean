class FolderSearch
  def get_files(directory)
    files = Dir.glob(directory + "/**/*").select { |e| File.file? e }
    file_size = get_files_size(files).sort { |a, b| b[1] <=> a[1] }
    file_size.to_h
  end

  private

  def get_files_size(files)
    files.each_with_object(Hash.new(0)) do |f, file_size|
      file_size[f] = File.size(f)
    end
  end
end
