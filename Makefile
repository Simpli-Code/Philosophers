# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chruhin <chruhin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/12 11:31:59 by chruhin           #+#    #+#              #
#    Updated: 2024/05/26 07:46:17 by chruhin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=		philo

SRC_DIR			=		src
OBJ_DIR			=		obj
INC_DIR			=		inc

# SRCS			=		$(wildcard $(SRC_DIR)/*.c)
DIRS			=		utils main
SRCS			=		$(foreach dir,$(DIRS),$(filter %.c,$(shell find $(SRC_DIR)/$(dir) -type f)))
OBJS			=		$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))
DEPS			=		$(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.d, $(SRCS))
INCS			=		$(addprefix -I, $(INC_DIR))

CFLAGS			=		-Wall -Wextra -pthread -MMD -MP -Werror
RM				=		rm -rf

.PHONY:					all clean fclean re
all:					$(OBJ_DIR) $(NAME)

$(OBJ_DIR):
						@mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o:			$(SRC_DIR)/%.c
						@mkdir -p $(OBJ_DIR)
						@$(CC) $(FLAGS) $(INCS) -c $< -o $@

$(NAME):				$(OBJS)
						@$(CC) $(FLAGS) $(OBJS) -o $(NAME)
						@printf "${GRN}Compiled successfuly $(RST) $(PIN)./$(NAME) ${RST}\n"

clean:
						@$(RM) $(OBJ_DIR)
						@printf "${RED}"'Deleted Object Files'"${RST}\n"

fclean:					clean
						@$(RM) $(NAME)
						@printf "${RED}"'and the Executable'"${RST}\n"

re:						fclean all

-include $(DEPS)

RED			=			\e[1;31m
GRN			=			\e[1;32m
PIN			=			\e[1;35m
RST			=			\e[0m
