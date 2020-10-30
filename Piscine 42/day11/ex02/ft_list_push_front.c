/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_push_front.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/11 21:49:03 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/11 21:49:07 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"

void		ft_list_push_front(t_list **begin_list, void *data)
{
	t_list	*tmp;

	if (begin_list)
	{
		tmp = ft_create_elem(data);
		tmp->next = *begin_list;
		*begin_list = tmp;
	}
	else
		*begin_list = ft_create_elem(data);
}
