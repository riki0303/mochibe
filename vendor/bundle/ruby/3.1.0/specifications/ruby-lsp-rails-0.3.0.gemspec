# -*- encoding: utf-8 -*-
# stub: ruby-lsp-rails 0.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-lsp-rails".freeze
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org", "changelog_uri" => "https://github.com/Shopify/ruby-lsp-rails/releases", "homepage_uri" => "https://github.com/Shopify/ruby-lsp-rails", "source_code_uri" => "https://github.com/Shopify/ruby-lsp-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shopify".freeze]
  s.date = "2024-02-15"
  s.description = "A Ruby LSP addon that adds extra editor functionality for Rails applications".freeze
  s.email = ["ruby@shopify.com".freeze]
  s.homepage = "https://github.com/Shopify/ruby-lsp-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.10".freeze
  s.summary = "A Ruby LSP addon for Rails".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<actionpack>.freeze, [">= 6.0"])
  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.0"])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 6.0"])
  s.add_runtime_dependency(%q<ruby-lsp>.freeze, [">= 0.14.0", "< 0.15.0"])
  s.add_runtime_dependency(%q<sorbet-runtime>.freeze, [">= 0.5.9897"])
end
