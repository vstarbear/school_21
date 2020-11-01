/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/26 18:04:53 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/22 10:19:39 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void			ft_putnbr_fd(int nbr, int fd)
{
	unsigned int nb;

	if (nbr < 0)
	{
		nb = (unsigned int)-nbr;
		ft_putchar_fd('-', fd);
	}
	else
		nb = (unsigned int)nbr;
	if (nb >= 10)
		ft_putnbr_fd(nb / 10, fd);
	ft_putchar_fd(nb % 10 + '0', fd);
}
