﻿namespace Connecto.DataObjects.EntityFramework
{
    public class EntityProductBase : EntityConnecto
    {
        public int Quantity { get; set; }
        public int QuantityActual { get; set; }
        public int QuantityLower { get; set; }
    }
}
