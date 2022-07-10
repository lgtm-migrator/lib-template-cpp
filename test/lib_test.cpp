#include <gtest/gtest.h>
#include <lib.h>

// Demonstrate some basic assertions.
TEST(LibAddOneTest, Basic) {
  const U8 x = 5;
  EXPECT_EQ(lib_add_one(x), x + 1);
}