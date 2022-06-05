#Variables

NAME			= libftprintf.a
LIBFT			= libft
SOURCES_DIR 	= sources/
OBJECT_DIR		= obj/
CC				= gcc
CFLAGS			= -Wall -Wextra -Werror
RM				= rm -f
ARFLAGS			= ar rcs

#Sources
SOURCE_FILES	= ft_printf ft_print_hex ft_print_number ft_print_percent ft_print_pointer ft_print_str ft_print_unsigned

# le añado prefijo y sufijo a las sources para no repetir el directorio y la terminacion de cada archivo

SRC 		= 	$(addprefix $(SOURCES_DIR), $(addsuffix .c, $(SOURCE_FILES)))
OBJ 		= 	$(addprefix $(OBJECT_DIR), $(addsuffix .o, $(SOURCE_FILES)))

OBJF		=	.cache_exists

all:	$(NAME)

$(NAME):	$(OBJ)
			@make -C $(LIBFT)
			@cp libft/libft.a .
			@mv libft.a $(NAME)
			@$(ARFLAGS) $(NAME) $(OBJ)
			@echo "ft_printf compiled!"

$(OBJECT_DIR)%.o: $(SOURCES_DIR)%.c | $(OBJF)
			@echo "Compiling: $<"
			@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(OBJF):
			@mkdir -p $(OBJECT_DIR)
			
clean:
		@$(RM) -rf $(OBJECT_DIR)
		@make clean -C $(LIBFT)
		@echo "ft_print object files cleaned"

fclean:	clean
		@$(RM)  $(LIBFT)/libft.a
		@$(RM)  $(NAME)
		@echo "archivos ejecutables de ft_print borrados"
		@echo "archivos ejecutables de libft borrados"


re:	fclean all
	@echo "limpieza y reconstrucción de ft_print total!"

norm:	
		@norminette $(SRC) $(INCLUDE) $(LIBFT) | grep -v Norme -B1 || true

.PHONY:	all clean fclean re norm
