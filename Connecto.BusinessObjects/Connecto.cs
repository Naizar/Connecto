﻿using System;

namespace Connecto.BusinessObjects
{
    public class Connecto
    {
        public int LocationId { get; set; }
        public int Status { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int? EditedBy { get; set; }
        public DateTime? EditedOn { get; set; }
    }
}
