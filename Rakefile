# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

require "standard/rake"

require "rake/extensiontask"

task build: :compile

Rake::ExtensionTask.new("coreml_predict") do |ext|
  ext.lib_dir = "lib/coreml_predict"
end

task default: %i[clobber compile test standard]
