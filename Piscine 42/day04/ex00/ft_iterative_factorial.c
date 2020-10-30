/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_iterative_factorial.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/01 16:27:30 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/01 18:03:53 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_iterative_factorial(int nb)
{
	int i;
	int fact;

	i = 1;
	fact = 1;
	if (nb >= 0 && nb <= 12)
	{
		while (i < nb)
		{
			i++;
			fact *= i;
		}
		return (fact);
	}
	else
		return (0);
}
