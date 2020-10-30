/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_list_push_back.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/11 14:18:24 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/13 14:50:28 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_list.h"
#include <stdio.h>

t_list *ft_create_elem(void *data);

void		ft_list_push_back(t_list **begin_list, void *data)
{
	t_list	*tmp;

	if (begin_list)
	{
		tmp = *begin_list;
		while (tmp->next)
		{
			tmp = tmp->next;
		}
		tmp->next = ft_create_elem(data);
	}
	else
		*begin_list = ft_create_elem(data);
}

int main()
{
	t_list *list;
	list = ft_create_elem("asd");
	ft_list_push_back(&list, "add1");
    ft_list_push_back(&list, "add2");
    ft_list_push_back(&list, "add3");
    ft_list_push_back(&list, "add4");
    ft_list_push_back(&list, "add5");
    ft_list_push_back(&list, "add6");
    ft_list_push_back(&list, "add7");
    ft_list_push_back(&list, "add8");
    ft_list_push_back(&list, "add9");
    ft_list_push_back(&list, "add10");
	while(list)
	{
		printf("%s", (char*)list->data);
        printf("%c", '\n');
		list = list->next;
	}
}
