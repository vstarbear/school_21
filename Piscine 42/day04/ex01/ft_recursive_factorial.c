/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_recursive_factorial.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/01 18:04:54 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/01 18:47:34 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_recursive_factorial(int nb)
{
	int		fact;
	int		nb2;

	if (nb > 0)
	{
		nb2 = nb - 1;
		fact = nb * ft_recursive_factorial(nb2);
		return (fact);
	}
	if (nb == 0)
		return (1);
	else
		return (0);
}
