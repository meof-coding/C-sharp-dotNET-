﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SignalRAssignment.Models;

namespace SignalRAssignment.Pages.Products
{
    public class IndexModel : PageModel
    {
        private readonly SignalRAssignment.Models.Lab2Context _context;

        public IndexModel(SignalRAssignment.Models.Lab2Context context)
        {
            _context = context;
        }

        public IList<Product> Product { get;set; }

        public async Task OnGetAsync()
        {
            Product = await _context.Products
                .Include(p => p.Category)
                .Include(p => p.Discount)
                .Include(p => p.Supplier).ToListAsync();
        }
    }
}
