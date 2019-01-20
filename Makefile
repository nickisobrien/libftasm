.PHONY: all clean fclean re

CFLAGS := -Wall -Wextra -Werror -I include/libfts -I include/ts

CFILES :=	main.c ts_bzero.c ts_tolower.c ts_toupper.c ts_strcat.c ts_isalpha.c \
			ts_isdigit.c ts_isalnum.c ts_isascii.c ts_isprint.c ts_strlen.c \
			ts_memset.c ts_memcpy.c ts_strdup.c\

CSRC := $(addprefix src/ts/, $(CFILES))

NASM := nasm

NASMFLAGS := -f macho64

ASMFILES :=	ft_bzero.s ft_tolower.s ft_toupper.s ft_strcat.s ft_isalpha.s \
			ft_isdigit.s ft_isalnum.s ft_isascii.s ft_isprint.s ft_strlen.s \
			ft_memset.s ft_memcpy.s ft_strdup.s \

ASMSRC := $(addprefix src/libfts/, $(ASMFILES))

NASMOBJ := $(ASMFILES:%.s=obj/%.o)

LFLAGS := -L. -lfts

LIBFT := libfts.a

NAME := ft_libfts

all: $(LIBFT) $(NAME)

$(LIBFT) : $(NASMOBJ)
	ar rcs $@ $^	

obj/%.o: src/libfts/%.s
	@mkdir -p obj/
	$(NASM) $(NASMFLAGS) $< -o $@

$(NAME):
	$(CC) $(CFLAGS) $(CSRC) $(LFLAGS) -o $(NAME)

clean:
	rm -rf obj

fclean: clean
	rm -rf $(LIBFT)
	rm -rf $(NAME)

re: fclean all
