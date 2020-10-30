/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_bonus.h                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@@student.42.fr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/18 03:34:47 by hwindom           #+#    #+#             */
/*   Updated: 2020/07/30 07:48:30 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_BONUS_H
# define GET_NEXT_LINE_BONUS_H

# include <unistd.h>
# include <stdlib.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 32
# endif

# define FDS 65535

int		ft_strlen(const char *str);
int		findpos(const char *str);
char	*ft_strdup(const char *str);
int		ft_join(char **line, char *buf, int linelen, int npos);
char	*appendline(char **line, char *buf, int bufflen);
int		get_next_line(int fd, char **line);
#endif
