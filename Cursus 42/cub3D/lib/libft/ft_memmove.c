/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/24 14:15:55 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/22 10:19:21 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void		*ft_memmove(void *dst, const void *src, size_t len)
{
	char	*d;
	char	*s;

	s = (char *)src;
	d = (char *)dst;
	if (d < s)
		while (len--)
			*d++ = *s++;
	else
	{
		d += (len - 1);
		s += (len - 1);
		while (len--)
			*d-- = *s--;
	}
	return (dst);
}
