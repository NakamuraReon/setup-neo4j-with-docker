from neo4j import GraphDatabase

driver = GraphDatabase.driver('bolt://my_neo4j:7687', auth=('neo4j', 'docker'))
session = driver.session()
for i in session.run('MATCH (n) RETURN n LIMIT 25'):
    print(i['n'])
session.close()   
