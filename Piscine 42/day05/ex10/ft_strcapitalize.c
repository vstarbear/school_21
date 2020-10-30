/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcapitalize.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/04 17:31:33 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/04 19:00:23 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_wordandnumber(char a)
{
	if ((a >= 'a' && a <= 'z') ||
			(a >= 'A' && a <= 'Z') || (a >= '0' && a <= '9'))
		return (1);
	return (0);
}

int		ft_word(char a)
{
	if ((a >= 'a' && a <= 'z') || (a >= 'A' && a <= 'Z'))
		return (1);
	return (0);
}

char	*ft_strcapitalize(char *str)
{
	int i;

	if (str[0] >= 'a' && str[0] <= 'z')
	{
		str[0] -= 32;
	}
	i = 1;
	while (str[i] != '\0')
	{
		if (ft_word(str[i]))
		{
			if (ft_wordandnumber(str[i - 1]))
			{
				if (str[i] >= 'A' && str[i] <= 'Z')
					str[i] += 32;
			}
			else if (str[i] >= 'a' && str[i] <= 'z')
				str[i] -= 32;
		}
		i++;
	}
	return (str);
}
