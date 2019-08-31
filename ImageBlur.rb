class Image
  #allow image to be called anywhere throughout class
  attr_accessor :image

  # initialize, first method to run, assign @image
  def initialize(image)
    @image = image
    manhattan
  end

  def manhattan
    print "How many times of Manhattan distance: "
    user=gets.chomp.to_i
    user.times do 
      find_ones
    end
  end

   #find location of 1
  #store location of index = storedOnes
  def find_ones
    storedOnes = []
  #loop through first part of array  
    image.each_with_index do |row, row_num|
        # print "row #{row}, : row_num #{row_num}"
        # print "\n"
  #loop through second part of array
      row.each_with_index do |idx, col_num|
        # print "idx #{idx}, : col_num #{col_num}"
        # print "\n"
        storedOnes << [row_num, col_num] if idx == 1
      end
    end
      #loop length of storedOnes and pixel transform 
      storedOnes.each do |value|
      #print "COUNT"
      #left
      @image[value[0]][value[1]-1] = 1 unless value[1] == 0
      #right
      @image[value[0]][value[1]+1] = 1 unless value[1] >= @image[value[0]].length-1
      #up
      @image[value[0]-1][value[1]] = 1 unless value[0] == 0
      #down
      @image[value[0]+1][value[1]] = 1 unless value[0] >= @image.length-1
      end
  end 
  # output image, join array to clean up output
  # "\n" is for spacing after each line
    def output_image
        image.each do |image|
          print image.join
          print ("\n")
        end
    end
end

image = Image.new([
  [1,0,0,0,0,0,0,0,0,0,0,1],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,1,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0,0,0,0,0,0],
  [1,0,0,0,0,0,0,0,0,0,0,1],
  ])
image.output_image