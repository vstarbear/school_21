/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split_whitespaces.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 16:16:24 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/07 15:07:01 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>

char	ft_whitespaces(char c)
{
	if ((c >= 9 && c <= 13) || c == ' ')
		return (1);
	else
		return (0);
}

int		ft_word(char *str)
{
	int i;
	int wrd;

	if (*str == '\0')
		return (0);
	i = 0;
	wrd = 0;
	while (*str)
	{
		if (ft_whitespaces(*str))
		{
			str++;
			wrd = 0;
		}
		else
		{
			if (wrd == 0)
				i++;
			wrd = 1;
			str++;
		}
	}
	return (i);
}

char	**ft_memo(char *str, int word, int i, int j)
{
	char **arr;

	arr = (char**)malloc(sizeof(char*) * (word + 1));
	if (*str == '\0' && ((arr[0] = 0) || 1))
		return (arr);
	while (ft_whitespaces(*str))
		str++;
	while (*str)
	{
		if (ft_whitespaces(*str))
		{
			arr[i++] = (char*)malloc(sizeof(char) * (j + 1));
			while ((j = 0) || ft_whitespaces(*str))
				str++;
			str--;
		}
		else
			j++;
		if (*(str++ + 1) == '\0')
			arr[i] = (char*)malloc(sizeof(char) * (j + 1));
	}
	if (!(ft_whitespaces(*(str - 1))))
		i++;
	arr[i] = 0;
	return (arr);
}

char	**ft_split_whitespaces(char *str)
{
	int		i;
	int		j;
	int		word;
	char	**arr;

	i = 0;
	j = 0;
	word = ft_word(str);
	arr = ft_memo(str, word, 0, 0);
	while (ft_whitespaces(*str))
		str++;
	while (i < word)
	{
		if (ft_whitespaces(*str))
		{
			while (ft_whitespaces(*str))
				str++;
			arr[i][j] = '\0';
			i += (j != 0) ? 1 : 0;
			j = 0;
		}
		else
			arr[i][j++] = *str++;
	}
	return (arr);
}
