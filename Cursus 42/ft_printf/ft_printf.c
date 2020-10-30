/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hwindom <hwindom@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/29 06:45:17 by hwindom           #+#    #+#             */
/*   Updated: 2020/07/29 10:52:45 by hwindom          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int			isin(char c, char *str)
{
	if (!str)
		return (0);
	while (*str != '\0')
	{
		if (*str == c)
			return (1);
		str++;
	}
	return (0);
}

static void	parsestruct(const char **format, va_list args, t_pi *data)
{
	manageflags(data, format);
	managewidth(data, format, args);
	manageprecision(data, format, args);
	managespecification(data, format);
}

void		initdata(t_pi *data)
{
	data->flags = 0;
	data->width = 0;
	data->precision = 0;
	data->spec = 0;
	data->length = 0;
}

static int	writespec(const char **ptr_format, va_list args, t_pi *data)
{
	parsestruct(ptr_format, args, data);
	if (data->spec == 'c')
		printchar(data, args);
	else if (data->spec == 's')
		printstring(data, args);
	else if (isin(data->spec, "diu"))
		printnumber(data, args, 10);
	else if (isin(data->spec, "xXp"))
		printnumber(data, args, 16);
	else if (data->spec == '%')
		printpercent(data);
	return (data->length);
}

int			ft_printf(const char *format, ...)
{
	va_list	args;
	t_pi	data;

	if (!format)
		return (-1);
	va_start(args, format);
	initdata(&data);
	while (*format != '\0')
	{
		if (*format == '%')
		{
			format++;
			writespec(&format, args, &data);
		}
		else
		{
			data.length += write(1, format, 1);
			format++;
		}
	}
	va_end(args);
	return (data.length);
}
