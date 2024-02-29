using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Termekek.Models;

namespace Termekek.Data
{
    public class TermekekContext : DbContext
    {
        public TermekekContext (DbContextOptions<TermekekContext> options)
            : base(options)
        {
        }

        public DbSet<Termekek.Models.Product> Product { get; set; } = default!;
    }
}
