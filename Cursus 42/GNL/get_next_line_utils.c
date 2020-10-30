/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@@student.42.fr>           +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/18 04:18:04 by hwindom           #+#    #+#             */
/*   Updated: 2020/07/30 07:48:33 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

int		findpos(const char *s)
{
	int	pos;

	pos = 0;
	while (s[pos] != '\n' && s[pos] != '\0')
	{
		pos++;
	}
	return (pos);
}

int		ft_strlen(const char *s)
{
	int	len;

	len = 0;
	if (s)
		while (s[len] != '\0')
			len++;
	return (len);
}

char	*ft_strdup(const char *str)
{
	int		len;
	char	*cp;
	int		i;

	len = ft_strlen(str);
	cp = malloc(len + 1);
	if (cp)
	{
		i = 0;
		while (i < len)
		{
			cp[i] = str[i];
			i++;
		}
		cp[i] = '\0';
	}
	return (cp);
}

int		ft_join(char **line, char *buf, int linelen, int npos)
{
	char	*tmp;
	int		i;
	int		j;

	i = 0;
	j = -1;
	tmp = malloc(linelen + npos + 1);
	if (tmp)
	{
		j = 0;
		while (i < linelen)
		{
			tmp[i] = (*line)[i];
			i++;
		}
		while (j < npos)
			tmp[i++] = buf[j++];
		tmp[i] = '\0';
		if (*line != NULL)
			free(*line);
		*line = tmp;
	}
	return (j);
}
