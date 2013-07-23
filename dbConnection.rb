class DbConnection


def connect(db, user, pw)
  PGconn.new('localhost', 5432, '', '', db, user, pw) 
end	

end
