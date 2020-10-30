/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_takes_place.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 17:18:43 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/06 17:27:25 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

char	*ft_hr(int hour)
{
	return ((hour >= 12 && hour <= 23) ? "P.M." : "A.M.));
}

void	ft_takes_place(int hour)
{
	if(hour < 0 || hour > 23)
		return;
	printf("THE FOLLOWING TAKES PLACE BETWEEN ");
	printf("%d", (hour %12 == 0) ? 12 : (hour %12));
	printf(".00 %s", ft_hr(hour));
	hour++;
	printf(" AND %d", (hour % 12 == 0) ? 12 : (hour % 12));
	printf(".00 %s\n", ft_hr(hour));
}
