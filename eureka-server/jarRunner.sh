cd /opt
touch nohup.out
nohup java -jar /opt/*.jar & tail -f nohup.out
