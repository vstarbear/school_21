/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_concat_params.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/06 13:46:33 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/06 19:49:27 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		ft_strlen(char *str)
{
	int i;

	i = 0;
	while (str[i] != '\0')
	{
		i++;
	}
	return (i);
}

char	*ft_concat_params(int argc, char **argv)
{
	char	*str;
	int		i;
	int		len;
	int		j;
	int		a;

	len = 0;
	i = 1;
	a = 0;
	while (i < argc)
		len += ft_strlen(argv[i++]) + 1;
	i = 1;
	str = (char*)malloc(sizeof(char) * len);
	while (i < argc)
	{
		j = 0;
		while (argv[i][j] != '\0')
			str[a++] = argv[i][j++];
		if (i == argc + 1)
			str[a++] = '\0';
		else
			str[a++] = '\n';
		i++;
	}
	return (str);
}
