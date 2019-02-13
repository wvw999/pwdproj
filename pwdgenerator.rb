names =  'source.txt'
@allphrase = IO.read(names)
@k = @allphrase.split(" ")
@r = ""
@outarr = []
@len = 0
@k.each do |boop|
  if boop.length > 3
    @r += "#{boop} "
    @len += 1
  else
    if @len > 1
      @outarr.push @r[0...-1]
      @r = ""
      @len = 0
    else
      @r = ""
      @len = 0
    end
  end
end

puts "**** Handy Horse Staple Password Generator ****\n\n"

@many = 4
@long = 6
@bits = 0
@outarr2 = []
@many.times do
  until @bits >= @long do
      @bop = @outarr.sample
      @bits = @bop.split.size
  end
  @outarr2.push @bop
  @bits = 0
end

@outarr2.each do |prnt|
  puts "   #{prnt}\n\n"
end
puts "**** eof ****"
