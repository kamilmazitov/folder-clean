require_relative 'folder_search/folder_search.rb'

  puts("Please enter the directory: ")
  directory = gets.chomp
  puts("Please enter count of files: ")
  count_of_files = gets.chomp.to_i

  folder_search = FolderSearch.new
  files = folder_search.get_files(directory)
  puts "The biggest files is: \n"
  files.first(count_of_files).each { |key, value| puts "#{key} => #{value}" + " byte" }
