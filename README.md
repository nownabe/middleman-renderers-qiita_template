# Middleman::Renderers::QiitaTemplate

[Qiita::Markdown](https://github.com/increments/qiita-markdown) for [Middleman](https://middlemanapp.com/)

## Usage
Add `gem 'middleman-renderers-qiita_template'` into your `Gemfile`

Set options in `config.rb`:

```rb
set :markdown_engine_prefix, Middleman::Renderers
set :markdown_engine, :qiita
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nownabe/middleman-renderers-qiita_template.
