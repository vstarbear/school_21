/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   display_file.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/02/13 11:53:11 by hwindom           #+#    #+#             */
/*   Updated: 2020/02/13 15:19:10 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <fcntl.h>

void	display(char *fname)
{
	int		file;
	char	c;

	file = open(fname, O_RDONLY);
	if (file >= 0)
	{
		while (read(file, &c, 1))
			write(1, &c, 1);
	}
	else
		return ;
	close(file);
}

int		main(int argc, char **argv)
{
	if (argc == 1)
		write(2, "File name missing.\n", 19);
	else if (argc > 2)
		write(2, "Too many arguments.\n", 20);
	if (argc == 2)
		display(argv[1]);
	return (0);
}
