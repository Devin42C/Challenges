# names = ["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]


# sorted_names = names.sort_by do |counter|
#   counter.split(" ").reverse
# end

# puts sorted_names.join('; ')

# rows = [["Name", "State", "Candidate", "Amount"],
# ["John Doe", "IA", "Rep. Smithers", "$300"],
# ["Mary Smith", "CA", "Sen. Nando", "$1,000"],
# ["Sue Johnson", "TX", "Rep. Nguyen", "$200"]]  



# puts "Candidate #{rows[3][2]} received #{rows[2][-1]} from a donor named #{rows[2][0]} from the state of #{rows[2][1]}"

# data_arr = [
#    ["Name", "State", "Candidate", "Amount"],
#    ["John Doe", "IA", "Rep. Smithers", "$300"],
#    ["Mary Smith", "CA", "Sen. Nando", "$1,000"],
#    ["Sue Johnson", "TX", "Rep. Nguyen", "$200"]
# ]      

# @name = params[:name] ||= ""
   
class Image 
  attr_accessor :image

def

def find_ones
    storedOnes = []
  #loop through first part of array  
    image.each do |row, row_num|
  #loop through second part of array
      row.each do |idx, col_num|
        print idx
          storedOnes << [row_num, col_num] if idx == 1
          print "Stored Values: #{storedOnes}"
        end
      end

    #use stored location of index to blur image
      
    end
  end



end

image = ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
  ])

print image
print image.class
