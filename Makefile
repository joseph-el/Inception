all :
	cd srcs && \
	sudo docker-compose up --build
creat :
	mkdir -p /home/joseph/data/wordpress && \
	mkdir -p /home/joseph/data/mysql

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
	sudo rm -drf /home/joseph/data/* &&\
	sudo docker volume rm srcs_mariadb_data srcs_wordpress_data --force
re : removeALL setup