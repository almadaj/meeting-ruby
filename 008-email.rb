fName = "Juliano"
sName = "Almada"
company = "OBC"

# email = fName.downcase + "." + sName.downcase + "@" + company.downcase + ".com"
email = ""
email << fName.downcase.split.join(".")
email << "."
email << sName.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email