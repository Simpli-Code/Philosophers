/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   philo.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chruhin <chruhin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/07 06:42:53 by chruhin           #+#    #+#             */
/*   Updated: 2023/10/05 07:31:26 by chruhin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PHILO_H
# define PHILO_H

# include <stdio.h>
# include <unistd.h>
# include <pthread.h>
# include <stdlib.h>
# include <sys/time.h>
# include <limits.h>

# define MAX_PHIL	200

typedef struct s_philo
{
	int				meals;
	int				philo_id;
	int				*left_fork_val;
	int				*right_fork_val;
	long long		last_eaten;
	pthread_t		tid;
	pthread_mutex_t	*left_fork;
	pthread_mutex_t	*right_fork;
	struct s_table	*info;
}					t_philo;

typedef struct s_table
{
	int				n_philos;
	int				t_to_die;
	int				t_to_eat;
	int				t_to_sleep;
	int				n_eaten;
	int				death;
	int				all_eaten;
	int				*forks_val;
	long long		timestamp;
	t_philo			*phil;
	pthread_mutex_t	mut_print;
	pthread_mutex_t	mut_eat;
	pthread_mutex_t	mut_all_eaten;
	pthread_mutex_t	*forks;
}					t_table;

long long		get_time(void);
unsigned int	my_atoi(const char *s);
void			t_to_eat(t_philo *philo);
void			measure_delay(long long time);
void			check_status(t_philo *philo, t_table *info);
void			display(char *str, t_philo *philo, int status);
void			init_philos(t_table *info, pthread_mutex_t *forks);
int				create_philos(t_table *info);
int				error_msg(int num, int code);
int				start_simulation(t_philo *philo);
int				num_eaten(t_table *info, int status);
int				error_msg_mutex(int token, int status);

#endif
