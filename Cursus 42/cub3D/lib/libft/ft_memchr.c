/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/24 14:18:21 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/22 10:19:05 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char	*str;
	unsigned char	c1;
	size_t			i;

	i = 0;
	c1 = (unsigned char)c;
	str = (unsigned char *)s;
	while (i < n)
	{
		if (str[i] == c1)
			return (str + i);
		i++;
	}
	return (NULL);
}
