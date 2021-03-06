# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/22 05:07:08 by hwindom           #+#    #+#              #
#    Updated: 2020/10/28 02:14:44 by hwindom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= cub3D

SCREENSHOT = screenshot.bmp

HEADER	= -I./includes

CFLAG	= -Wall -Wextra -Werror 

LIBFT	= libft.a

LIBMLX	= libmlx.a

MLX	= -framework OpenGL -framework Appkit

LIBS	= -L./lib/libft -lft -L./lib/mlx -lmlx

SRC_NAME = main.c \
		   init.c \
		   get_next_line.c \
		   keys.c\
		   pos.c \
		   parse1.c\
		   parse2.c \
		   move.c \
		   draw.c \
		   texture.c \
		   raycasting.c \
		   sprite.c \
		   mapcheck.c \
		   render.c \
		   utils.c \
		   utils2.c \
		   screenshot.c 
SRC_PATH = ./src
SRC = $(addprefix $(SRC_PATH)/, $(SRC_NAME))

OBJ_NAME = $(SRC_NAME:.c=.o)
OBJ_PATH = ./obj
OBJ = $(addprefix $(OBJ_PATH)/, $(OBJ_NAME))
$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@gcc $(CFLAG) $(HEADER) -o $@ -c $<

all	: $(NAME)

$(NAME)	: $(OBJ) $(LIBFT) $(LIBMLX)
	gcc -o $(NAME) $(OBJ) $(HEADER) $(CFLAG) $(LIBS) $(MLX)

$(LIBFT):
	$(MAKE) -C lib/libft

$(LIBMLX):
	$(MAKE) -C lib/mlx

clean	:
	$(MAKE) -C lib/libft clean
	$(MAKE) -C lib/mlx clean
	rm -rf $(OBJ_PATH) $(SCREENSHOT)

fclean	: clean
	$(MAKE) -C lib/libft fclean
	rm -rf $(NAME)

re		: fclean all

.PHONY: all clean fclean re
