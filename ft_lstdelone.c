/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ageorgey <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/17 13:28:22 by ageorgey          #+#    #+#             */
/*   Updated: 2018/12/17 13:33:48 by ageorgey         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void			ft_lstdelone(t_list **alst, void (*del)(void*, size_t))
{
	(*del)((void*)(*alst)->content, (size_t)(*alst)->content_size);
	free(*alst);
	*alst = NULL;
}
