# encoding: utf-8

namespace :metrics do
  desc 'Generate code coverage'
  task :coverage do
    begin
      original, ENV['COVERAGE'] = ENV['COVERAGE'], 'true'
      Rake::Task['spec:unit'].invoke
    ensure
      ENV['COVERAGE'] = original
    end
  end
end
