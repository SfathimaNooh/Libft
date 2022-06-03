NAME		= libft.a
cc		= gcc
CFLAG		= -Wall -Werror -Wextra
RM		=rm -f
AR		=ar
ARFLAG		= crs
SRCS_1		= ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strnstr.c ft_strncmp.c ft_strdup.c ft_strrchr.c ft_memset.c ft_memcpy.c ft_memcpy.c \
		  ft_memmove.c ft_memchr.c ft_memcmp.c ft_bzero.c ft_atoi.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c   \
		  ft_strdup.c ft_tolower.c ft_toupper.c	

SRCS_2		= ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_split.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
		  ft_putendl_fd.c ft_putnbr_fd.c

SRCS_BN 	= ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

SRC		= $(SRCS_1) \
	  	  $(SRCS_2)

OBJS		= $(SRC:.c=.o)

OBJS_BONUS 	= $(SRCS_BN:.c=.o)


all	: $(NAME)

%.o : %.c
	$(CC) $(CFLAG) -c $< -o $@

clean :
	$(RM) $(RMFLAG) $(OBJS) $(OBJS_BONUS)

fclean : clean
	$(RM) $(RMFLAG) $(NAME)

re : fclean all

$(NAME) : $(OBJS)
	$(AR) $(ARFLAGS) $@ $^

bonus : $(OBJS) $(OBJS_BONUS)
	$(AR) $(ARFLAGS) $(NAME) $^

 .PHONY : all clean fclean re
