require "spec_helper"

require "folder_search/folder_search.rb"

describe FolderSearch do
  let(:folder_search) { FolderSearch.new }

  describe "get_files" do
    it "return hash with files and sizes" do
      expect(folder_search.get_files("spec/fixtures")).to eql Hash["spec/fixtures/example.json", 375]
    end
  end
end

