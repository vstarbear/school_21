# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hwindom <hwindom@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/28 08:27:01 by hwindom           #+#    #+#              #
#    Updated: 2020/07/29 10:52:43 by hwindom          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wall -Wextra -Werror

SRCS = ft_printf.c parse.c prints.c num.c nums.c
OBJS = $(SRCS:.c=.o)

.PHONY: all, clean, fclean, re

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	gcc $(FLAGS) -c $< -o $@

clean:
	rm -rf *.o

fclean: clean
	rm -rf *.a

re:  fclean all

run: $(NAME)
	gcc main.c $(NAME)
