# frozen_string_literal: true

require "tilt/template"
require "qiita/markdown"

module Tilt
  class QiitaTemplate < Template
    self.default_mime_type = "text/html"

    def self.engine_initialized?
      defined? Qiita::Markdown::Processor
    end

    def prepare
      @engine = Qiita::Markdown::Processor.new(context)
      @engine.filters.clear
      @engine.filters.concat(filters)
      @output = nil
    end

    def evaluate(scope, locals, &block)
      @output ||= @engine.call(data)[:output].to_s
    end

    private

    def context
      @options[:option_context] || {}
    end

    def filters
      @options[:filters] || Qiita::Markdown::Processor.default_filters
    end
  end
end
