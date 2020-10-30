/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_iterative_power.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/01 19:30:47 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/01 20:04:12 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_iterative_power(int nb, int power)
{
	int		a;

	a = nb;
	if (power == 0)
		return (1);
	if (power > 0)
	{
		while (power > 1)
		{
			power--;
			nb *= a;
		}
		return (nb);
	}
	else
		return (0);
}
