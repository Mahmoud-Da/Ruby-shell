def bytes_to_bits(bytes)
  bytes = bytes.to_i
  bits = bytes * 8
  bits
end

puts bytes_to_bits 8
puts bytes_to_bits 16
