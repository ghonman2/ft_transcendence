# ARGS

DIRS	=	/Users/ghonman2/workspace/inner/inception/data/{db,pgadmin}

# CMD

all:
		@mkdir -p $(DIRS)
		@docker compose -f srcs/docker-compose.yml up --build -d

up:
		@mkdir -p $(DIRS)
		@docker compose -f srcs/docker-compose.yml up -d

down:
		@docker compose -f srcs/docker-compose.yml down

clean:
		@chmod 744 clean.sh
		@./clean.sh

ac:
		@make clean
		rm -rf /Users/ghonman2/workspace/inner/inception/data 2>/dev/null

re:
		@make clean
		@make 
info:
		@echo "=============================== IMAGES ==============================="
		@docker images
		@echo
		@echo "============================= CONTAINERS ============================="
		@docker ps -a
		@echo
		@echo "=============== NETWORKS ==============="
		@docker network ls
		@echo
		@echo "====== VOLUMES ======"
		@docker volume ls

.PHONY:	all up down clean info re ac
