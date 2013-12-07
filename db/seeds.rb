# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# COLLEGE_NAME, DEPT_NAME, MAJOR (OF PERSON CHECKED), BIB_AUTHOR, BIB_TITLE, CALL_NUMBER_MAJOR

contents = File.read("public/bobst_data.txt")
lines = contents.split("\n")

lines.each do |line| 
  fields = line.split(", ")
  fields[4][0] = ""
  
  Book.create(
              college_name: fields[0],
              dept_name: fields[1],
              major: fields[2],
              bib_author: fields[3],
              bib_title: fields[4],
              call_number_major: fields[5]
              )
end

for i in 1..10
  Floor.create(floor_number: i)
end

sections = []

for i in ('A'..'Z').to_a
  for j in ('A'..'Z').to_a
    call = i + j
    sections << call
  end
end

sections.each_with_index do |section, index|
  if index <= sections.index("DJ")
    Section.create(name: section, floor_id: 4)
  elsif index < sections.index("DJ") && index <= sections.index("EZ")
    Section.create(name: section, floor_id: 6)
  elsif index < sections.index("EZ") && index <= sections.index("LZ")
    Section.create(name: section, floor_id: 7)
  elsif index < sections.index("LZ") && index <= sections.index("PZ")
    Section.create(name: section, floor_id: 8)
  elsif index < sections.index("DJ") && index <= sections.index("ZZ")
    Section.create(name: section, floor_id: 9)
  end
end
