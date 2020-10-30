/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@@student.42.fr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/17 14:59:51 by hwindom           #+#    #+#             */
/*   Updated: 2020/07/30 07:48:14 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

char	*appendline(char **line, char *buf, int buflen)
{
	int		linelen;
	int		npos;
	char	*next;
	int		j;

	linelen = ft_strlen(*line);
	npos = findpos(buf);
	next = NULL;
	j = ft_join(line, buf, linelen, npos);
	if (j != -1)
		if (npos != buflen)
			next = ft_strdup(&(buf[j + 1]));
	return (next);
}

int		get_next_line(int fd, char **line)
{
	char		*buf;
	int			ret;
	static char	*next;
	char		*tmp;

	if (line == NULL || fd < 0 || BUFFER_SIZE <= 0)
		return (-1);
	*line = ft_strdup("");
	if (next)
	{
		tmp = appendline(line, next, ft_strlen(next));
		free(next);
		if ((next = tmp) != NULL)
			return (1);
	}
	if ((buf = malloc(BUFFER_SIZE + 1)) == NULL)
		return (-1);
	while ((ret = read(fd, buf, BUFFER_SIZE)) > 0)
	{
		buf[ret] = '\0';
		if ((next = appendline(line, buf, ret)) != NULL)
			break ;
	}
	free(buf);
	return (ret > 0 ? 1 : ret);
}
