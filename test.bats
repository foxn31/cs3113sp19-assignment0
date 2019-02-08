#!/usr/bin/env bats


TEST5=`cat <<EOF
    x
   xxx
  xxxxx
 xxxxxxx
xxxxxxxxx
 xxxxxxx
  xxxxx
   xxx
    x
EOF
`

@test "five exes" {
  result="$(./diamond 5 x)"
  [ "$result" = "$TEST5" ]
}
