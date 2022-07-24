#include <iostream>

template <typename T> void test(T output, T expect) {
  std::cout << "Test " << output << " == " << expect;
  if (output == expect) {
    std::cout << " OK" << std::endl;
  } else {
    std::cout << " ERR: " << std::endl;
    std::cout << "\tgot " << output << ", expected " << expect << std::endl;
  }
  std::cout << "---" << std::endl;
}

int main() {
  ;
  return 0;
}
