import std.stdio;
import std.array;
import std.random;
import std.conv;

ulong f(ulong n)
{
  ulong v[];
  auto app = appender(v);

  for (ulong c = 0; c < n; ++c) {
    app.put(c);
    //v.length++; v[$-1] = c; // MUCH SLOWER!
  }

  assert(app.data.length == n);
  return app.data[uniform(0, app.data.length)];
}

void main(string args[])
{
  ulong n = to!ulong(args[1]);
  ulong r = to!ulong(args[2]);
  ulong v[];
  auto app = appender(v);

  for (ulong c = 0; c < r; ++c) {
    app.put(f(n));
  }

  assert(app.data.length == r);
 
  writeln(app.data[0]);
}
