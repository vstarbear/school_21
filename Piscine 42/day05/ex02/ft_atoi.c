/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/03 17:53:44 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/04 21:16:47 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_atoi(char *str)
{
	int num;
	int numminus;
	int numplusminus;

	numplusminus = 1;
	num = 0;
	numminus = 1;
	while (*str == ' ' || (*str >= 9 && *str <= 13))
		str++;
	if (*str == '-')
		numminus = -1;
	if (*str == '-' || *str == '+')
	{
		str++;
		if (*str == '-' || *str == '+')
			numplusminus = 0;
	}
	while (*str >= '0' && *str <= '9')
	{
		num = num * 10 + (*str - 48);
		str++;
	}
	return (num * numminus * numplusminus);
}
