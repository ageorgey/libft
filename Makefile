# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ageorgey <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/17 14:15:27 by ageorgey          #+#    #+#              #
#    Updated: 2018/12/17 13:05:36 by ageorgey         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a

FLAGS		=   -Wall -Werror -Wextra

C_FILES  =   ft_memset.c ft_bzero.c ft_memccpy.c ft_memchr.c ft_lstadd.c
C_FILES +=  ft_memcmp.c ft_memcpy.c ft_memmove.c ft_strlen.c ft_lstdel.c
C_FILES +=  ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_lstdelone.c
C_FILES +=  ft_strncat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_lstiter.c
C_FILES +=  ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_lstmap.c
C_FILES +=  ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_isascii.c ft_lstnew.c
C_FILES +=  ft_isprint.c ft_toupper.c ft_tolower.c ft_strnew.c ft_struntil.c
C_FILES +=  ft_memalloc.c ft_memdel.c ft_strdel.c ft_strclr.c ft_countchar.c
C_FILES +=  ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c
C_FILES +=  ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c
C_FILES +=  ft_strsplit.c ft_itoa.c ft_putchar.c ft_putstr.c ft_putendl.c
C_FILES +=  ft_putnbr.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c
C_FILES +=  ft_putnbr_fd.c ft_strlcat.c ft_strnlen.c ft_memnlen.c ft_strpchr.c

O_FILES =   ft_memset.o ft_bzero.o ft_memccpy.o ft_memchr.o ft_lstadd.o
O_FILES +=  ft_memcmp.o ft_memcpy.o ft_memmove.o ft_strlen.o ft_lstdel.o
O_FILES +=  ft_strdup.o ft_strcpy.o ft_strncpy.o ft_strcat.o ft_lstdelone.o
O_FILES +=  ft_strncat.o ft_strchr.o ft_strrchr.o ft_strstr.o ft_strlcat.o
O_FILES +=  ft_strnstr.o ft_strcmp.o ft_strncmp.o ft_strncmp.o ft_atoi.o
O_FILES +=  ft_isdigit.o ft_isalpha.o ft_isalnum.o ft_isascii.o ft_lstiter.o
O_FILES +=  ft_isprint.o ft_toupper.o ft_tolower.o ft_strnew.o ft_lstmap.o
O_FILES +=  ft_memalloc.o ft_memdel.o ft_strdel.o ft_strclr.o ft_lstnew.o
O_FILES +=  ft_striter.o ft_striteri.o ft_strmap.o ft_strmapi.o ft_strequ.o
O_FILES +=  ft_strnequ.o ft_strsub.o ft_strjoin.o ft_strtrim.o ft_strsplit.o
O_FILES +=  ft_itoa.o ft_putchar.o ft_putstr.o ft_putendl.o ft_putnbr.o
O_FILES +=  ft_putchar_fd.o ft_putstr_fd.o ft_putendl_fd.o ft_putnbr_fd.o
O_FILES +=  ft_strnlen.o ft_memnlen.o ft_strpchr.o ft_struntil.o ft_countchar.o

all		:   $(NAME)

$(NAME)	:
		@gcc -c $(FLAGS) $(C_FILES) -I.
		@ar rc $(NAME) $(O_FILES)
		@ranlib $(NAME)

clean	:
		@rm -f $(O_FILES)

fclean	: clean
		@rm -f $(NAME)

re		: fclean all
