/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_recursive_power.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/01 20:05:26 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/01 20:54:47 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_recursive_power(int nb, int power)
{
	int		a;

	a = nb;
	if (power == 0)
	{
		return (1);
	}
	if (power >= 1)
	{
		power--;
		nb = a * ft_recursive_power(a, power);
	}
	else
		return (0);
	return (nb);
}
