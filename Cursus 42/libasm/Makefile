# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/06 05:16:32 by hwindom           #+#    #+#              #
#    Updated: 2020/11/06 05:34:38 by hwindom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

%.o: %.s
	nasm -f macho64 -s $< -o $@

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

test: all main.c
	gcc -Wall -Wextra -Werror -I libasm.h -L. -lasm main.c -o test
	./test

fclean: clean
	rm -rf $(NAME)
	rm -rf test_file
	rm -rf test

re: fclean all

.PHONY: all clean fclean re test