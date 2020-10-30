/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   btree_create_node.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/13 16:56:51 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/13 17:14:52 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "ft_btrr.h"

t_btree		*btree_create_node(void *item)
{
	t_btree	*node;

	node = malloc(sizeof(node));
	if (node)
	{
		node->item = item;
		node->left = 0;
		node->right = 0;
		return (node);
	}
	return (NULL);
}
