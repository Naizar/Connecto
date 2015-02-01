﻿using Connecto.Common.Enumeration;
using System;

namespace Connecto.DataObjects.EntityFramework
{
    public class EntityConnecto
    {
        public int LocationId { get; set; }
        public RecordStatus Status { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int? EditedBy { get; set; }
        public DateTime? EditedOn { get; set; }
    }
}
