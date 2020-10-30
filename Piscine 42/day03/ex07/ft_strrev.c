/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrev.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/31 22:12:38 by hwindom           #+#    #+#             */
/*   Updated: 2020/01/31 23:12:48 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strrev(char *str)
{
	int	i;
	int	j;
	int	k;
	char *strr;

	size = 0;
	i = 0;
	while (str[i] != '\0')
	{
		size++;
	}
	j = size - 1;
	while (i <= size)
	{
		strr[j] = str[i];
		i++;
		j--;
	}
	str = strr;
	return (str);
}
