# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: spunyapr <spunyapr@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/05 15:03:27 by spunyapr          #+#    #+#              #
#    Updated: 2024/12/05 17:42:33 by spunyapr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
NAME = libftprintf.a
HEADER = ft_printf.h
CFLAGS = -Wall -Werror -Wextra
SRC = ft_printf_c_s_d_i.c ft_printf_x_p_u.c ft_printf.c
OBJ = ft_printf_c_s_d_i.o ft_printf_x_p_u.o ft_printf.o
	  
all: $(NAME) 

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJ) $(HEADER)
	ar rcs $(NAME) $(OBJ)
	
clean:
	rm -f $(OBJ) 
	
fclean: clean
	rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re bonus