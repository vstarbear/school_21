/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/21 14:56:46 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/28 10:07:18 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

double	find_angle(char c)
{
	if (c == 'N')
		return (M_PI / 2 * 3);
	else if (c == 'S')
		return (M_PI / 2);
	else if (c == 'E')
		return (0);
	else
		return (M_PI);
}

double	max(double a, double b)
{
	if (a > b)
		return (a);
	return (b);
}

int		is_upper(int x)
{
	if (x >= 65 && x <= 90)
		return (1);
	return (0);
}

int		is_space(int x)
{
	if ((x >= 9 && x <= 13) || x == 32)
		return (1);
	return (0);
}
