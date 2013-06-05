Gem::Specification.new do |s|
  s.name = %q{text-reform}
  s.version = %q{0.2.1}
  s.summary = %q{Text::Reform reformats text according to formatting pictures.}
  s.platform = Gem::Platform::RUBY

  s.has_rdoc = true

  s.test_files = 'tests/testall.rb'

  s.autorequire = %q{text/format}
  s.require_paths = %w{lib}

  s.files = Dir.glob("**/*").delete_if do |item|
    item.include?("CVS") or item.include?(".svn") or
    item == "install.rb" or item =~ /~$/ or
    item =~ /gem(?:spec)?$/
  end

  s.author = %q{Kaspar Schiess}
  s.email = %q{eule@space.ch}
  s.rubyforge_project = %q(text-reform)
  s.homepage = %q{http://rubyforge.org/projects/text-format}
  description = []
  File.open("README") do |file|
    file.each do |line|
      line.chomp!
      break if line.empty?
      description << "#{line.gsub(/\[\d\]/, '')}"
    end
  end
  s.description = description[2..-1].join(" ")

  s.add_dependency('text-hyphen', '~>1.4.1')
end
