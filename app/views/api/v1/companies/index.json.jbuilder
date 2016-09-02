json.array! @companies.each do |company|
  json.partial! 'company.json.jbuilder', company: company
end
