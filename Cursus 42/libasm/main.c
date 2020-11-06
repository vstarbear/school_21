/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/06 05:11:38 by hwindom           #+#    #+#             */
/*   Updated: 2020/11/06 05:20:37 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include "libasm.h"

void	check_strlen(void)
{
	char *empty = "";
	char *hello_world = "Hello world !";
	char *alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz";

	printf("\n================================\n");
	printf("========== FT_STRLEN ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("%-20s: %zu\n", "libc", strlen(empty));
	printf("%-20s: %zu\n", "libasm", ft_strlen(empty));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: %zu\n", "libc", strlen(hello_world));
	printf("%-20s: %zu\n", "libasm", ft_strlen(hello_world));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", alphabet);
	printf("%-20s: %zu\n", "libc", strlen(alphabet));
	printf("%-20s: %zu\n", "libasm", ft_strlen(alphabet));
	printf("\n");
}

void	clear_buffer(char *buffer, int size)
{
	int i = 0;
	while (i < size)
		buffer[i++] = 0;
}

void	check_strcpy(void)
{
	char buffer[400];
	
	char *empty = "";
	char *hello_world = "Hello world !";
	char *alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz";

	printf("\n================================\n");
	printf("========== FT_STRCPY ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char []", empty);
	printf("%-20s: buffer[400]\n", "copy to");
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, empty));
	clear_buffer(buffer, 400);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, empty));
	clear_buffer(buffer, 400);
	printf("\n");
	printf("%-20s: \"%s\"\n", "char []", hello_world);
	printf("%-20s: buffer[400]\n", "copy to");
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, hello_world));
	clear_buffer(buffer, 400);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, hello_world));
	clear_buffer(buffer, 400);
	printf("\n");
	printf("%-20s: \"%s\"\n", "char []", alphabet);
	printf("%-20s: buffer[400]\n", "copy to");
	printf("%-20s: \"%s\"\n", "libc", strcpy(buffer, alphabet));
	clear_buffer(buffer, 400);
	printf("%-20s: \"%s\"\n", "libasm", ft_strcpy(buffer, alphabet));
	clear_buffer(buffer, 400);
	printf("\n");
}

void	check_strcmp(void)
{
	char *empty = "";
	char *hello_world = "Hello world !";
	char *hello_human = "Hello human !";
	char *hello_world2 = "Hello world !";

	printf("\n================================\n");
	printf("========== FT_STRCMP ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"%s\"\n", "compared to", hello_human);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world, hello_human));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world, hello_human));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"%s\"\n", "compared to", hello_world2);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world, hello_world2));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world, hello_world2));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world2);
	printf("%-20s: \"%s\"\n", "compared to", empty);
	printf("%-20s: \"%d\"\n", "libc", strcmp(hello_world2, empty));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(hello_world2, empty));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("%-20s: \"%s\"\n", "compared to", hello_world2);
	printf("%-20s: \"%d\"\n", "libc", strcmp(empty, hello_world2));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(empty, hello_world2));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("%-20s: \"%s\"\n", "compared to", empty);
	printf("%-20s: \"%d\"\n", "libc", strcmp(empty, empty));
	printf("%-20s: \"%d\"\n", "libasm", ft_strcmp(empty, empty));
	printf("\n");
}

void	check_write(void)
{
	int		fd = open("test_file", O_RDONLY);
	char	*hello_world = "Coucou\n";
	char	*empty = "";

	printf("\n================================\n");
	printf("========== FT_WRITE ============\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"Libc  :%zu Errno:%d %s\"\n", "libc", write(1, hello_world, 7), errno, strerror(errno));
	printf("%-20s: \"Libasm:%zu Errno:%d %s\"\n", "libasm", ft_write(1, hello_world, 7), errno, strerror(errno));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	printf("%-20s: \"Libc  :%zu Errno:%d %s\"\n", "libc", write(1, empty, 0), errno, strerror(errno));
	printf("%-20s: \"Libasm:%zu Errno:%d %s\"\n", "libasm", ft_write(1, empty, 0), errno, strerror(errno));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"Libc  :%zu Errno:%d %s\"\n", "libc", write(-7, hello_world, 7), errno, strerror(errno));
	printf("%-20s: \"Libasm:%zu Errno:%d %s\"\n", "libasm", ft_write(-7, hello_world, 7), errno, strerror(errno));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"Libc  :%zu Errno:%d %s\"\n", "libc", write(1, NULL, 7), errno, strerror(errno));
	printf("%-20s: \"Libasm:%zu Errno:%d %s\"\n", "libasm", ft_write(1, NULL, 7), errno, strerror(errno));
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	printf("%-20s: \"Libc  :%zu Errno:%d %s\"\n", "libc", write(fd, NULL, 7), errno, strerror(errno));
	printf("%-20s: \"Libasm:%zu Errno:%d %s\"\n", "libasm", ft_write(fd, NULL, 7), errno, strerror(errno));
	errno = 0;
	close(fd);
}

void	check_read(void)
{
	int		fd = open("tester/main.c", O_RDONLY);
	char	buff1[891];
	int		ret = 1;

	printf("\n================================\n");
	printf("========== FT_READ =============\n");
	printf("================================\n\n");
	printf("%-20s: \n", "header main.c | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	close(fd);

	fd = open("tester/main.c", O_RDONLY);
	clear_buffer(buff1, 891);
	printf("%-20s: \n", "header main.c | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	close(fd);

	fd = open("test_file", O_RDONLY);
	printf("%-20s: \n", "file test | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	close(fd);

	fd = open("test_file", O_RDONLY);
	clear_buffer(buff1, 891);
	printf("%-20s: \n", "file test | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	close(fd);

	fd = 0;
	printf("%-20s: \n", "stdin | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");

	fd = 0;
	clear_buffer(buff1, 891);
	printf("%-20s: \n", "stdin | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	clear_buffer(buff1, 891);

	fd = open("wrong", O_RDONLY);
	printf("%-20s: \n", "wrong | libc ");
	ret = read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	close(fd);

	fd = open("wrong", O_RDONLY);
	clear_buffer(buff1, 891);
	printf("%-20s: \n", "wrong | libasm ");
	ret = ft_read(fd, buff1, 890);
	buff1[ret] = 0;
	printf("[return : %d errno: %d %s]\n|%s|\n", ret, errno, strerror(errno), buff1);
	printf("\n");
	clear_buffer(buff1, 891);
	close(fd);
	errno = 0;
}

void	check_strdup(void)
{
	char *hello_world = "Hello world !";
	char *empty = "";
	char *save;
	char *save2;
	
	printf("\n================================\n");
	printf("========== FT_STRDUP ===========\n");
	printf("================================\n\n");
	printf("%-20s: \"%s\"\n", "char *", hello_world);
	save = strdup(hello_world);
	printf("%-20s: \"%s\"\n", "libc", save);
	free(save);
	save = NULL;
	save2 = ft_strdup(hello_world);
	printf("%-20s: \"%s\"\n", "libasm", save2);
	free(save2);
	save2 = NULL;
	printf("\n");
	printf("%-20s: \"%s\"\n", "char *", empty);
	save = strdup(empty);
	printf("%-20s: \"%s\"\n", "libc", save);
	free(save);
	save = NULL;
	save2 = ft_strdup(empty);
	printf("%-20s: \"%s\"\n", "libasm", save2);
	free(save2);
	save2 = NULL;
	printf("\n");
}

int		main(void)
{
	check_strlen();
	check_strcpy();
	check_strcmp();
	check_write();
	check_read();
	check_strdup();
}
