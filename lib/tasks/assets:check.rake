# probably don't need this
namespace :assets do 
	task :check do
		styles = Dir['**/*.css'] + Dir['**/*.scss']
		styles.each do |filename|
			puts "Checking #{filename}"
			`scss -c #{filename}`
		end
	end
end
