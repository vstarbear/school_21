/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_reverse.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/12 14:06:04 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/12 14:41:02 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"

void	ft_list_reverse(t_list **begin_list)
{
	t_list	*bef;
	t_list	*aft;
	t_list	*list;

	bef = NULL;
	list = *begin_list;
	while (list != NULL)
	{
		aft = list->next;
		list->next = bef;
		bef = list;
		list = aft;
	}
	*begin_list = bef;
}
