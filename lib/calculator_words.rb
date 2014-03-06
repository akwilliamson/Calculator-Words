def calculator_words(string)
  result = 0
  operators = {"plus" => "+",
               "minus" => "-",
               "multiplied" => "*",
               "times" => "*",
               "divided" => "/",
  } 
  exceptions = ["second", "third","st", "nd", "rd","th"]
  final_answers = []

  sentences = string.split("?")

  sentences.each do |sentence|

    string_array = sentence.split(" ") 
    new_array = []
    string_array.each do |index|
      if operators.has_key?(index)
        
        operators.each do |key,value|
          if (index == key)
          new_array << value
          new_array
          end
        end

      elsif index.include?("?")
            new_array << index.to_f
            new_array

      elsif index.match(/\d+\D/)
        exceptions.each do |i|
          if index.include?(i)
            new_array << "**"
            new_array << index.to_f
            new_array
          end
        end

      elsif index.match(/\d/)
        new_array << index.to_f
        new_array

      end
    end 
    final_answers << eval(new_array.join(" "))
  end
  final_answers.join(", ")
end

print calculator_words("What is 4 plus 2? What is 4 times 9?")

