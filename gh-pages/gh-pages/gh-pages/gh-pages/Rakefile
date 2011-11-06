require "bundler/setup"

task :build do
  system "jekyll --no-server --no-auto"
end

task :cleanup do
end

task :release => :build do
  if File.exists?("gh-pages")
    Dir.chdir("gh-pages") { system "git pull" }
  else
    system "git clone git@github.com:raykrueger/brews.git gh-pages --branch gh-pages"
  end

  Dir.chdir("gh-pages") do
    system "rm -rf *"
    system "cp -r ../_site/* ."
    system "git add -A"
    system "git commit -m 'updated'"
    system "git push origin gh-pages"
  end
end

