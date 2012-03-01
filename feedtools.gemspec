
dist_dirs = [ "lib", "test", "db" ]

Gem::Specification.new do |s|
  s.name = "feedtools"
  s.version = "0.2.29"
  s.summary = "Parsing, generation, and caching system for xml news feeds."
  s.description = "Implements a simple system for handling xml news feeds with caching."

  s.files = %w{ rakefile install.rb README CHANGELOG }
  dist_dirs.each do |dir|
    s.files = s.files + Dir.glob( "#{dir}/**/*" ).delete_if do |item|
      item.include?( "\.svn" ) || item.include?( "database\.yml" )
    end
  end
  
  s.add_dependency('activerecord', '>= 1.10.1')
  s.add_dependency('uuidtools', '>= 1.0.0')
  s.add_dependency('builder', '>= 1.2.4')

  s.require_path = 'lib'
  
  begin
  s.post_install_message = <<-TEXT

    FeedTool's caching schema has changed to allow Feed objects to be
    serialized to the cache.  This should offer some limited speed up
    in some cases.

  TEXT
  rescue Exception
  end

  s.has_rdoc = true
  s.extra_rdoc_files = %w( README )
  s.rdoc_options.concat ['--main',  'README']
  
  s.author = "Bob Aman"
  s.email = "bob@sporkmonger.com"
  s.homepage = "http://github.com/vbatts/feedtools"
  s.rubyforge_project = "feedtools"
end
