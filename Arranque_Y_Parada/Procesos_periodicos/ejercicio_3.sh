#edito mi archivo cron con las siguientes lineas
*/30 * * * * users >> /home/user1/log_usuarios.txt
*/30 * * * * ps -aux | tail -n +2 | wc -l >> /home/user1/log_procesos.txt