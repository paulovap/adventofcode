input = "ckczppom"

# PART I
IO.puts Enum.find(1..99999999999, fn(x) -> 
	:crypto.hash(:md5, input <> Integer.to_string(x))
	|> Base.encode16
	|> String.starts_with? "00000"
end)

# PART II

IO.puts Enum.find(1..99999999999, fn(x) -> 
	:crypto.hash(:md5, input <> Integer.to_string(x))
	|> Base.encode16
	|> String.starts_with? "000000"
end)