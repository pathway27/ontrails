require 'gyoku'

a = Gyoku.xml(
  contact: {
    "Group_Tag" => 
    {
      field: [{:content! => "Tim", :@name => "First Name"},
              {:content! => "D",   :@name => "Last Name"},
              {:content! => "l@email.com", :@name => "Email"}],
    }
  }
)

puts a
