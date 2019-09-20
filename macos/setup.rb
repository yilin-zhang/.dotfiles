#!/usr/bin/ruby

class Linker
  def link(relative_path, link_dir)
    link_file(get_file_path(relative_path), link_dir)
  end

  private

  def link_file(file_path, link_dir)
    file_name = File.basename(file_path)
    link_path = File.join(link_dir, file_name)
    if File.exist?(link_path)
      File.rename(link_path, link_path+".bak")
    end
    File.symlink(file_path, link_path)
  end

  def get_file_path(relative_path)
    current_dir = File.expand_path(File.dirname(__FILE__))
    File.join(current_dir, relative_path)
  end
end

HOME = Dir.home
CONFIG = File.join(HOME, ".config")

PROFILE = File.join(HOME, ".profile")
if File.exist?(PROFILE)
  File.open(PROFILE, "a+") do |file|
    file.puts("source ~/.myprofile")
  end
end

linker = Linker.new
linker.link(".bash_profile", HOME)
linker.link(".myshrc", HOME)
linker.link("fish", CONFIG)
