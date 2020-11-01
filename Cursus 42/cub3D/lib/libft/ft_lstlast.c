/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstlast.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/22 10:18:35 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/22 10:18:36 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstlast(t_list *lst)
{
	t_list	*curr;
	int		count;

	count = ft_lstsize(lst);
	curr = lst;
	while (count > 1)
	{
		curr = curr->next;
		count--;
	}
	return (curr);
}
