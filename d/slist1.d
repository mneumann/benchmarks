import std.stdio;
import std.random;
import std.conv;

struct Node(T)
{
  Node *next;
  T data;
};

struct SList(T)
{
  private Node!T *root = null;

  void prepend(T t)
  {
    Node!T *node = new Node!T;
    node.data = t;

    if (root is null) {
      root = node; 
    } else {
      node.next = root;
      root = node;
    }
  }

  T first()
  {
    assert(root != null);
    return root.data;
  }
};

ulong f(ulong n)
{
  SList!ulong list;

  for (ulong c = 0; c < n; ++c) {
    list.prepend(c);
  }

  return uniform(0, n);
}

void main(string args[])
{
  ulong n = to!ulong(args[1]);
  ulong r = to!ulong(args[2]);
  SList!ulong list;

  for (ulong c = 0; c < r; ++c) {
    list.prepend(f(n));
  }

  writeln(list.first());
}
