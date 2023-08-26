all :
	cd srcs && \
	sudo docker-compose up --build
creat :
	mkdir -p /home/yoel-idr/data/wordpress && \
	mkdir -p /home/yoel-idr/data/mysql 
setup : creat all

build :
	cd srcs && \
	docker-compose build
down :
	cd srcs && \
	docker-compose down
clean :
	docker system prune -a
removeALL : down
	sudo docker system prune --all --volumes --force && \
	sudo rm -drf /home/yoel-idr/data/* &&\
	sudo docker volume rm srcs_mariadb_data srcs_wordpress_data --force
re : removeALL setup