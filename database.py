import pymysql.cursors

connect_to_db = pymysql.connect(user='root', password='Peti2929',
                              host='127.0.0.1',
                              database='codecool',autocommit=True)

try:
    CURSOR = connect_to_db.cursor()
    result=[]
    #List all meetup registrations for a particular user.
    CURSOR.execute("SELECT * FROM users "
                   "JOIN meetupregistrations ON meetupregistrations.UsersId = users.Id"
                   " JOIN meetups ON meetups.Id = meetupregistrations.UsersId WHERE users.Id = 2")
    result.append(["\nFirst order"])
    result.append( CURSOR.fetchall())
    #List meetups which are after 2015.11.27
    CURSOR.execute("""SELECT * FROM meetups WHERE StartTime > '2015/11/27'
                    """)
    result.append(["\nSecond order"])
    result.append(CURSOR.fetchall())
    #List users who have introduction
    CURSOR.execute("""SELECT * FROM users WHERE introduction IS NOT NULL
                    """)
    result.append(["\nThird order"])
    result.append( CURSOR.fetchall())
    #printing the results
    for i in result:
        for j in i:
            print(j)

except:
        connect_to_db.rollback()
connect_to_db.close()
