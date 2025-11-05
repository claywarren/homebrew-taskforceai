#!/bin/bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Change to the directory containing the Gemfile
cd homebrew-taskforceai || exit 1

# Collect arguments, stripping the "homebrew-taskforceai/" prefix
declare -a RUBY_FILES
for file in "$@"; do
  RUBY_FILES+=("${file#homebrew-taskforceai/}")
done

# Execute rubocop with the adjusted paths
bundle exec rubocop "${RUBY_FILES[@]}"
