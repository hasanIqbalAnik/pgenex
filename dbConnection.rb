class DbConnection


def connect(hostname, port, db, user, passwd)
	PGconn.new(hostname, port, '', '',db, user, passwd) 
end

end
