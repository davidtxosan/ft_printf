/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: usuario <usuario@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/29 13:14:22 by usuario           #+#    #+#             */
/*   Updated: 2022/06/05 18:10:34 by usuario          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <unistd.h>
# include <stdlib.h>
# include <stdint.h>
# include <stdio.h>

int		ft_putchar(int c);
int		ft_formats(va_list args, const char format);
int		ft_printf(const char *str, ...);
int		ft_print_hex(unsigned int num, const char format);
int		ft_print_number(int n);
int		ft_print_percent(void);
int		ft_print_pointer(unsigned long long ptr);
int		ft_print_str(char *str);
int		ft_print_unsigned(unsigned int n);

void	ft_put_str(char *str);
void	ft_put_ptr(uintptr_t num);
int		ft_ptr_length(uintptr_t num);
char	*ft_uitoa(unsigned int n);
int		ft_num_length(unsigned	int num);
void	ft_put_hex(unsigned int num, const char format);
int		ft_hex_len(unsigned	int num);
#endif
