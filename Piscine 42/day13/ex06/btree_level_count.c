/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   btree_level_count.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/13 20:47:41 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/13 20:57:24 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_btree.h"

int		btree_level_count(t_btree *root)
{
	int i;

	i = 0;
	if (root->left)
	{
		if (i > btree_level_count(root->left))
			return (i);
		else
			return (btree_level_count(root->left));
	}
	if (root->right)
	{
		if (i > btree_level_count(root->right))
			return (i);
		else
			return (btree_level_count(root->right));
	}
	if (!root)
		return (0);
	return (i + 1);
}
