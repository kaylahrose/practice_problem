require 'bigdecimal'
require 'benchmark'


def calculate_total(products)
  products = JSON.parse(products, symbolize_names: true)[:products]
  products.sum do |product|
    require 'pry'; binding.pry
    if product[:quantity] && product[:price]
      require 'pry'; binding.pry
      BigDecimal(product[:price].to_s) * product[:quantity] 
    end
  end
end

# def reverse_string!(string)
#   half_length = string.length / 2
#   half_length.times {|i| string[i], string[-i-1] = string[-i-1], string[i] }
#   string
# end

def reverse_string(string)
  new_string = ""
  string.each_char do |char|
    new_string.insert(0, char)
  end
  new_string
end

def return_reverse_string(string)
  new_string = ""
  string.each_char do |char|
    new_string.insert(0, char)
  end
  return new_string
end

# class String
#   def reverse_inplace!
#     half_length = self.length / 2
#     half_length.times {|i| self[i], self[-i-1] = self[-i-1], self[i] }
#     self
#   end
# end

# def reverse(a)
#   (0...(a.length/2)).each {|i| a[i], a[a.length-i-1]=a[a.length-i-1], a[i]}
#   return a
# end

def reverse_string1(string) # method reverse_string with parameter 'string'
  loop = string.length       # int loop is equal to the string's length
  word = ''                  # this is what we will use to output the reversed word
  while loop > 0             # while loop is greater than 0, subtract loop by 1 and add the string's index of loop to 'word'
    loop -= 1                  # subtract 1 from loop
    word += string[loop]       # add the index with the int loop to word
  end                        # end while loop
  return word                # return the reversed word
end  

def alt_reverse(string)
  word = ""
  chars = string.each_char.to_a
  chars.size.times{word << chars.pop}
  word
end

lorum = <<EOT
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
viverra nunc.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
viverra nunc.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
viverra nunc.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
viverra nunc.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent quis magna eu
lacus pulvinar vestibulum ut ac ante. Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Suspendisse et pretium orci. Phasellus congue iaculis
sollicitudin. Morbi in sapien mi, eget faucibus ipsum. Praesent pulvinar nibh
vitae sapien congue scelerisque. Aliquam sed aliquet velit. Praesent vulputate
facilisis dolor id ultricies. Phasellus ipsum justo, eleifend vel pretium nec,
pulvinar a justo. Phasellus erat velit, porta sit amet molestie non,
pellentesque a urna. Etiam at arcu lorem, non gravida leo. Suspendisse eu leo
nibh. Mauris ut diam eu lorem fringilla commodo. Aliquam at augue velit, id
viverra nunc.
EOT

require 'pry'; binding.pry