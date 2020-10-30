/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ultimate_range.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 12:18:35 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/06 19:48:34 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_ultimate_range(int **range, int min, int max)
{
	int size;
	int i;

	i = 0;
	size = max - min;
	if (max >= min)
	{
		*range = 0;
		return (0);
	}
	*range = (int*)malloc(sizeof(int) * size);
	while (min < max)
	{
		range[i][0] = min;
		i++;
		min++;
	}
	return (size);
}
