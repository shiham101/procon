#!/usr/bin/ruby
puts "#!/usr/bin/env vala"
puts "public extern int system(string s);"
puts "static void main(){"
print "system(\"ruby -e '"
$<.each{|e|
	l=e.strip
	break if l=='__END__'
	print l.gsub('"','\"').gsub("'",'\"')+';' if !l.start_with?('#')
}
puts "'\");}"