/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_range.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/05 19:39:13 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/06 18:22:29 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		*ft_range(int min, int max)
{
	int *arr;
	int i;

	if (max <= min)
		return (0);
	arr = (int*)malloc(sizeof(int) * (max - min));
	i = 0;
	while (min < max)
	{
		arr[i] = min;
		i++;
		min++;
	}
	return (arr);
}
