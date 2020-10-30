/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_foreach_if.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/12 15:50:36 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/12 15:57:03 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"

void	ft_list_foreach_if(t_list *begin_list, void (*f)(void *),
		void *data_ref, int (*cmp)(void *, void *))
{
	t_list *list;

	list = begin_list;
	while (list)
	{
		if ((*cmp)(list->data, data_ref) == 0)
		{
			f(list->data);
		}
		list = list->next;
	}
}
