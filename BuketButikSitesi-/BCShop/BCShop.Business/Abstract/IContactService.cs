﻿using BCShop.Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BCShop.Business.Abstract
{
	public interface IContactService
	{
		void ContactAdd(Contact contact);
	}
}
