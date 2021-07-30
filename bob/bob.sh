#!/usr/bin/env bash


main () {
  # removes space
  local -r message=$(echo "$1" | tr -d "[:space:]")

  if silence; then
    echo "Fine. Be that way!"
  elif yelling && question; then
    echo "Calm down, I know what I'm doing!"
  elif yelling; then
    echo "Whoa, chill out!"
  elif question; then
    echo "Sure."
  else
    echo "Whatever."
  fi
}

silence () {
  # check if message is empty
  [[ -z $message ]]
}

yelling () {
  # At least one uppercase letter and none lowercase letters
  #[[ $message == *[[:upper:]]* && $message != *[[:lower:]]* ]]
  [[ $message =~ [[:upper:]] && ! $message =~ [[:lower:]] ]]
}

question () {
  # last character is a question mark
  #[[ $message =~ \?$ ]]
  [[ ${message: -1} == "?" ]]
}

main "$@"
