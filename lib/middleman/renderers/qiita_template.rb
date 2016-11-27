# frozen_string_literal: true

require "tilt"
require "tilt/qiita_template"

module Middleman
  module Renderers
    class QiitaTemplate < ::Tilt::QiitaTemplate
      VERSION = "0.2.0"
    end

    ::Tilt.register QiitaTemplate, "markdown", "mkd", "md"
  end
end
