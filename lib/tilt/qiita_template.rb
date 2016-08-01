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
      @engine.filters.concat(filters)
      @output = nil
    end

    def evaluate(scope, locals, &block)
      @output ||= @engine.call(data)[:output].to_s
    end

    private

    def context
      # @options[:context] || {}
      { script: true }
    end

    def filters
      @options[:filters] || []
    end
  end
end
