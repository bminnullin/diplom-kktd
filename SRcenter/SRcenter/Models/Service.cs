//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SRcenter.Models
{
    using System;
    using System.Collections.Generic;
    using System.IO;

    public partial class Service
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Service()
        {
            this.BoughtServices = new HashSet<BoughtService>();
            this.OrderServices = new HashSet<OrderService>();
            this.SeasonTickets = new HashSet<SeasonTicket>();
        }
        public string GetPhoto
        {
            get
            {
                if (S_image is null)
                    return null;
                return Directory.GetCurrentDirectory() + @"\Images\" + S_image.Trim();
            }
        }

        public int ServiceID { get; set; }
        public string S_name { get; set; }
        public string S_description { get; set; }
        public Nullable<System.TimeSpan> S_period { get; set; }
        public Nullable<decimal> S_price { get; set; }
        public string S_image { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoughtService> BoughtServices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderService> OrderServices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SeasonTicket> SeasonTickets { get; set; }
    }
}
