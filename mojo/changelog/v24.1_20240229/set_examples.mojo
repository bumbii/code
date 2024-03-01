# https://docs.modular.com/mojo/stdlib/collections/set.html#set
# Since v24.1 (2024-02-29)

from collections import Set

fn main() raises:
    var set = Set[Int](1, 2, 3)
    print(len(set))
    # Add new item to the set
    set.add(4)

    for element in set:
        print(element[]) # 1, 2, 3, 4

    set -= Set[Int](3, 4, 5)
    print(set == Set[Int](1, 2))  # True
    print(set | Set[Int](0, 1) == Set[Int](0, 1, 2))  # True
    var element = set.pop()
    print(len(set))  # 1
    print(element)