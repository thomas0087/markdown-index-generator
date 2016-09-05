# Encoding: UTF-8

def md_link(text)
  path = text.split('/')

  # Determine title
  title = ''
  if path[-1] == 'README.md'
    title = path[-2]
    path.pop # for calculating accurate depth
  else
    title = path[-1][0..-4]
  end
  title = title.capitalize.gsub('_', ' ')

  # Determine link url
  link = text.gsub(/^\.\//, '')

  # Determine link depth
  depth = "  " * (path.size - 1)

  "#{depth}* [#{title}](#{link})"
end

output = []
prefix = ARGV[0] || '.'

`tree -if #{prefix}`.split("\n").each do |file|
  next unless /\.md$/ =~ file
  next if /^\.\/README/ =~ file
  output << md_link(file.gsub(/^#{prefix}\//, ''))
end

puts output
