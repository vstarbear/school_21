/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_size.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/11 17:22:18 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/11 18:04:51 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"

int			ft_list_size(t_list *begin_list)
{
	t_list	*tmp;
	int		count;

	count = 0;
	if (begin_list)
	{
		tmp = begin_list;
		while (tmp)
		{
			count++;
			tmp = tmp->next;
		}
	}
	return (count);
}
