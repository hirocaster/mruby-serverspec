MRuby::Gem::Specification.new('mruby-serverspec') do |spec|
  spec.license = 'MIT'
  spec.authors = [
    'Gosuke Miyashita',
    'Ryo Okubo'
  ]
  spec.version = '0.0.1'

  # TODO Related to rspec
  # spec.add_dependency 'mruby-rspec'

  # Related to Specinfra
  spec.add_dependency 'mruby-open3',      github: 'k0kubun/mruby-open3'
  spec.add_dependency 'mruby-shellwords', github: 'k0kubun/mruby-shellwords'
  spec.add_dependency 'mruby-specinfra',  github: 'k0kubun/mruby-specinfra'

  # Related to Serverspec
  spec.add_dependency 'mruby-eval'
end
