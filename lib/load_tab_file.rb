# load tab separated values into an array.
class LoadTabFile
  def initialize(file_name)
    file_relative_path = File.dirname(__FILE__)
    @relative_path = "#{file_relative_path}/#{file_name}"
  end

  def read_file_into_array
    input_array = []
    File.open(@relative_path, 'r').each { | line | input_array << line }
    input_array
  end

  def print    
    File.open(@relative_path,"r") do |file|
      while dataInLine = file.gets     
        $stdout.puts dataInLine
      end
    end
  end

  def relative_path
    @relative_path
  end
end
