use pipes::*;

fn main() {
  let args = os::args();
  let n = uint::from_str(args[1]).get();
  let r = uint::from_str(args[2]).get();

  let channels: dvec::DVec<Chan<int>> = dvec::DVec();

  for n.times {
    let (p, ch): (Port<int>, Chan<int>) = pipes::stream();
    channels.push(ch);
    do task::spawn |move p| {
      p.recv();
    }
  }

  for channels.each |ch| {
    ch.send(0);
  }
}
