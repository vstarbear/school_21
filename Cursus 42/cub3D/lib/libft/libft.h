/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/28 15:37:58 by hwindom           #+#    #+#             */
/*   Updated: 2020/10/22 10:20:40 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H

# define LIBFT_H

# include <string.h>
# include <stdlib.h>
# include <unistd.h>

void				ft_bzero(void *s, size_t n);

void				*ft_memset(void *b, int c, size_t len);

int					ft_isalpha(int c);

int					ft_isalnum(int c);

int					ft_isascii(int c);

int					ft_isprint(int c);

int					ft_toupper(int c);

int					ft_tolower(int c);

void				*ft_memcpy(void *dst, const void *src, size_t n);

void				*ft_memccpy(void *dst, const void *src, int c, size_t n);

void				*ft_memmove(void *dst, const void *src, size_t len);

void				*ft_memchr(const void *s, int c, size_t n);

int					ft_memcmp(const void *s1, const void *s2, size_t n);

size_t				ft_strlen(const char *s);

char				*ft_strrchr(const char *s, int c);

char				*ft_strnstr(const char *haystack,
											const char *needle, size_t len);

int					ft_strncmp(const char *s1, const char *s2, size_t n);

int					ft_atoi(const char *str);

int					ft_isdigit(int c);

char				*ft_strchr(const char *s, int c);

char				*ft_strnew(size_t size);

void				*ft_calloc(size_t num, size_t size);

char				*ft_strdup(const char *s1);

size_t				ft_strlcat(char *dst, const char *src, size_t size);

size_t				ft_strlcpy(char *dst, const char *src, size_t size);

char				*ft_substr(char const *s, unsigned int start, size_t len);

char				*ft_strjoin(char const *s1, char const *s2);

char				*ft_strtrim(char const *s1, char const *set);

char				*ft_itoa(int n);

char				*ft_strmapi(char const *s, char (*f)(unsigned int, char));

void				ft_putchar_fd(char c, int fd);

void				ft_putstr_fd(char *s, int fd);

void				ft_putendl_fd(char *s, int fd);

void				ft_putnbr_fd(int n, int fd);

size_t				ft_strlen_nb(unsigned int n);

char				**ft_split(char const *s, char c);
#endif