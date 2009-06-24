# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yahoo_stock}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Square Circle Triangle"]
  s.date = %q{2009-06-24}
  s.email = %q{sct@sct.com.au}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/yahoo_stock.rb",
     "lib/yahoo_stock/base.rb",
     "lib/yahoo_stock/query.rb",
     "spec/spec_helper.rb",
     "spec/yahoo_stock_spec.rb"
  ]
  s.homepage = %q{http://github.com/square-circle-triangle/yahoo_stock}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/yahoo_stock_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hpricot>, [">= 0"])
    else
      s.add_dependency(%q<hpricot>, [">= 0"])
    end
  else
    s.add_dependency(%q<hpricot>, [">= 0"])
  end
end
