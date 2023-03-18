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

    public partial class SeasonTicket
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SeasonTicket()
        {
            this.BoughtSTs = new HashSet<BoughtST>();
            this.OrderSTs = new HashSet<OrderST>();
            this.Raspisanies = new HashSet<Raspisanie>();
            this.Roles = new HashSet<Role>();
        }

        public string GetPhoto
        {
            get
            {
                if (ST_image is null)
                    return null;
                return Directory.GetCurrentDirectory() + @"\Images\" + ST_image.Trim();
            }
        }


        public int SeasonTicketID { get; set; }
        public string ST_name { get; set; }
        public string ST_description { get; set; }
        public Nullable<int> ServiceID { get; set; }
        public string ST_period { get; set; }
        public Nullable<decimal> ST_price { get; set; }
        public string ST_image { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BoughtST> BoughtSTs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderST> OrderSTs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Raspisanie> Raspisanies { get; set; }
        public virtual Service Service { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Role> Roles { get; set; }
    }
}
