# write code to return an array with the colors of fruits capitalized and
# the size of fruits uppercased
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.each_with_object([]) do |(food, info), array|
        array << info[:colors].map { |c| c.capitalize } if info[:type] == 'fruit'
        array << info[:size].upcase if info[:type] == 'vegetable'
      end

p arr
