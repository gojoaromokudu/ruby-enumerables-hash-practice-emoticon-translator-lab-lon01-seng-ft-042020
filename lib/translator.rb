require "yaml"
require "pry"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {}
  emoticons.each do |key, value|
    hash[key] = {
      :english => value[0],
      :japanese => value[1]
    }
   end
  hash
end

def get_japanese_emoticon(file_path, english)
 library = load_library(file_path)
 
end

def get_english_meaning(file_path, japanese)
 library = load_library(file_path)
 l = ""
 library.each do |key, value|
  if value[:japanese] == japanese
    l<< key
 # binding.pry
  end
 end
 
 if l == ""
   l << "Sorry, that emoticon was not found"
 end
 l
end