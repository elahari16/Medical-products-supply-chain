class store():

    def addprod(cat,prd,company,price,psize,kg,description,location,mdate,edate):
        #print(prd+" "+price)
        cursor = mydb.cursor()
        cursor.execute('SELECT * FROM sc_product')
        result = cursor.fetchall()
        j=0
        for i in result:
            j+=1
        id2=j+1
        sql = "INSERT INTO sc_product(id,category,product,company,price,psize,kg,description,location,mdate,edate) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        val = (id2,cat,prd,company,price,psize,kg,description,location,mdate,edate)
        cursor.execute(sql, val)
        mydb.commit()            
        print(cursor.rowcount, "Registered Success")
        result="sucess"
        if cursor.rowcount==1:
            return redirect(url_for('man_home',act='1'))
        else:
            return redirect(url_for('man_home',act='2'))
            #msg='Already Exist'
