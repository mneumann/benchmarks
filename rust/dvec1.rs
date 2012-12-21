fn f(n: uint) -> uint {
  let mut c : uint = 0;
  let v : dvec::DVec<uint> = dvec::DVec();

  while c < n {
    v.push(c);
    c += 1;
  }

  assert v.len() == n;
  return v.get_elt(rand::random() % v.len());
}

fn main() {
  let args = os::args();
  let n = uint::from_str(args[1]).get();
  let r = uint::from_str(args[2]).get();

  let v : dvec::DVec<uint> = dvec::DVec();
  let mut c : uint = 0;
  while c < r {
    v.push(f(n));
    c += 1;
  }

  io::println(fmt!("%?", v.get_elt(0)));
}
