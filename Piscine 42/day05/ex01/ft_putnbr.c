/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/03 12:51:08 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/04 21:16:09 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_putchar(char c);

void	ft_minint(char *str)
{
	int i;

	i = 0;
	while (str[i] != '\0')
	{
		ft_putchar(str[i]);
		i++;
	}
}

void	ft_putnbr(int nb)
{
	if (nb == -2147483648)
		ft_minint("-2147483648");
	else
	{
		if (nb >= 0 && nb <= 9)
		{
			ft_putchar(nb + '0');
		}
		if (nb > 9)
		{
			ft_putnbr(nb / 10);
			ft_putchar(nb % 10 + '0');
		}
		if (nb < 0)
		{
			ft_putchar('-');
			ft_putnbr(nb * -1);
		}
	}
}
