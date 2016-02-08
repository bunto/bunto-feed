# The `strip` filter was added to Liquid in version 3
# Bunto did not require Liquid 3 until Bunto 1.0.0
# This shim is needed for compatibility with Bunto 1.x

module Bunto
  module StripWhitespace
    def strip(input)
      input.to_s.strip
    end
  end
end

unless Liquid::StandardFilters.method_defined?(:strip)
  Liquid::Template.register_filter(Bunto::StripWhitespace)
end
