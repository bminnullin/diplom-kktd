﻿#pragma checksum "..\..\..\Pages\AddOrderSeasonTicketPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "E30876690DEE09ABDAAB019C918EF4CE80E88B652577FA558A761DA64B79908D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using SRcenter.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SRcenter.Pages {
    
    
    /// <summary>
    /// AddOrderSeasonTicketPage
    /// </summary>
    public partial class AddOrderSeasonTicketPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 21 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TextBlockOrderNumber;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TblockID;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TboxID;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TblockSname;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TblockDateOrder;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TblockPrice;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddOrder;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SRcenter;component/pages/addorderseasonticketpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.TextBlockOrderNumber = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.TblockID = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.TboxID = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.TblockSname = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.TblockDateOrder = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.TblockPrice = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            this.AddOrder = ((System.Windows.Controls.Button)(target));
            
            #line 47 "..\..\..\Pages\AddOrderSeasonTicketPage.xaml"
            this.AddOrder.Click += new System.Windows.RoutedEventHandler(this.AddOrder_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

