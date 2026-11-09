class DevelopmentConfig():
    DEBUG=True
    MYSQL_HOST='localhost'
    MYSQL_USER='Elena'
    MYSQL_PASSWORD='murcielago'
    MYSQL_DB='lila_pizzeria'
    MYSQL_CURSORCLASS= 'DictCursor'

config={
    'development': DevelopmentConfig
}