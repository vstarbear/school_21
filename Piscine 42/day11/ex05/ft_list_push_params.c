/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_push_params.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/11 19:08:11 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/11 22:02:01 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"

t_list		*ft_list_push_params(int ac, char **av)
{
	t_list	*list;
	int		i;
	t_list	*tmp;

	if (ac <= 0)
		return (NULL);
	i = 0;
	tmp = NULL;
	while (i < ac)
	{
		list = ft_create_elem(av[i]);
		list->next = tmp;
		tmp = list;
		i++;
	}
	return (list);
}
