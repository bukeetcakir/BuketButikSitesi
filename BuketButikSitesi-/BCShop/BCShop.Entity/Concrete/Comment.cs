﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BCShop.Entity.Concrete
{
	public class Comment
	{
		[Key]

		public int CommentID { get; set; }
		public string UserName { get; set; }
		public string Content { get; set; }
		public DateTime Date { get; set; }
		public bool Status{ get; set; }
        public int ProductID { get; set; }
        public Product Product { get; set; }
		public int UserID { get; set; }
		public User User { get; set; }
    }
}
