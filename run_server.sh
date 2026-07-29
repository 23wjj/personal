#!/usr/bin/env bash
set -euo pipefail

# GitHub Pages 228 is not compatible with Ruby 4, while the macOS system
# Ruby is too old for this lockfile. Prefer the compatible Homebrew Ruby.
if [[ -x /opt/homebrew/opt/ruby@3.4/bin/ruby ]]; then
  export PATH="/opt/homebrew/opt/ruby@3.4/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:${PATH}"
fi

exec bundle exec jekyll serve --livereload "$@"
