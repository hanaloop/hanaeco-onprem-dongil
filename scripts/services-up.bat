 set OPENAI_API_KEY= 
 set CIPHER_KEY= 
 set DB_PASSWORD= 
 docker-compose -p haneco_onprem  --env-file .env.docker-compose-onprem -f docker-compose-withenvoy.yml up
