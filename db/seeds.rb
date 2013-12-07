# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# COLLEGE_NAME, DEPT_NAME, MAJOR (OF PERSON CHECKED), BIB_AUTHOR, BIB_TITLE, CALL_NUMBER_MAJOR

contents = File.read("public/bobst_data.txt")
lines = contents.split("\n")

lines.each do |line| 
  fields = line.split(",")
  Book.create(
              college_name: fields[0],
              dept_name: fields[1],
              major: fields[2],
              bib_author: fields[3],
              bib_title: fields[4],
              call_number_major: fields[5]
              )
end

