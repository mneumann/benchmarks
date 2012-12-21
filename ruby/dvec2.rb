def f(n)
  v = []
  for c in 0 ... n
    v << "#{c}x"
  end
  v.sample
end

if __FILE__ == $0
  n = Integer(ARGV[0])
  r = Integer(ARGV[1])
  v = []
  for c in 0 ... r
    v << f(n)
  end
  p v[0]
end
