# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aberneli <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/08/16 14:59:12 by aberneli          #+#    #+#              #
#    Updated: 2021/11/09 14:43:01 by aberneli         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a

CC := gcc
FLAGS := -Wall -Wextra -Werror -I.

HEADER := ft_printf.h libft.h

SRC := ft_printf.c ft_converter.c ft_tools.c ft_convsint.c ft_getters.c \
	ft_convuint.c ft_convxint.c ft_convstr.c ft_atoi.c ft_strlen.c \
	ft_isdigit.c ft_memcpy.c ft_memset.c ft_strchr.c
OBJ := $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(NAME)

%.o: %.c $(HEADER)
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJBONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all

rebonus: fclean bonus

.PHONY: all clean fclean re bonus rebonus
