class Array
  def self.toy (size = 10, &block)
    block_given? ? Array.new(size, &block) : Array.new(size) {|i| i+1}
  end 
end

class Hash
  def self.toy (size = 10, &block)
    h = {}
    size.times {|i| h[i+1] = block_given? ? yield(i+1) : (97+i).chr }
    h
  end
end
