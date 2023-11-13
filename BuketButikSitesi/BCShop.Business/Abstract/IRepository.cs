﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BCShop.Business.Abstract
{
	public interface IRepository<T> where T : class, new()
	{
		List<T> GetAll();
		void Create(T item);
		void Delete(T item);
		void Update(T item);
		T GetById(int id);
	}
}