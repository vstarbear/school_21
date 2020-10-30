/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/04 12:28:13 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/04 21:11:08 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

char	*ft_strstr(char *str, char *to_find)
{
	int i;
	int a;

	a = 0;
	if (to_find[0] == '\0')
		return (str);
	else
	{
		while (str[a] != '\0')
		{
			i = 0;
			if (str[a + i] == to_find[0])
			{
				while (to_find[i] != '\0' && str[a + i] == to_find[i])
				{
					if (to_find[i + 1] == '\0')
						return (&str[a]);
					i++;
				}
			}
			a++;
		}
		return (0);
	}
}
