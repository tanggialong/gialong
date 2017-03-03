<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="Web_Sales.product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
     <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="default.aspx">Admin</a> 
            </div>
             <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Last access : 12 May 2016 &nbsp; <a href="login.html" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a class="active-menu"  href="default.aspx"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
                     <li>
                        <a  href="ui.html"><i class="fa fa-desktop fa-3x"></i> UI Elements</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Manager<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="cus.aspx">Customer</a>
                            </li>
                            <li>
                                <a href="Cate.aspx">Caterory</a>
                            </li>
                            <li>
                                <a href="product.aspx">Products</a>
                            </li>
                            <li>
                                <a href="order.aspx">Order</a>
                            </li>
                            <li>
                                <a href="orderitem.aspx">Order Item</a>
                            </li>
                        </ul>
                      </li>  			
					 <li  >
                        <a   href="login.html"><i class="fa fa-bolt fa-3x"></i> Login</a>
                    </li>	
                     <li  >
                        <a   href="registeration.html"><i class="fa fa-laptop fa-3x"></i> Registeration</a>
                    </li>	
					                   
                   
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Product Manage</h2>   
                        <h5>Welcome Tkong , Love to see you back. </h5>
                    
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <hr />
                <h3>Manage Product </h3>
                <div class="contentmanage">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            Category_ID:
                            <asp:TextBox ID="Category_IDTextBox" runat="server" Text='<%# Bind("Category_ID") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            ID:
                            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                            <br />
                            Category_ID:
                            <asp:TextBox ID="Category_IDTextBox" runat="server" Text='<%# Bind("Category_ID") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            ID:
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                            <br />
                            Category_ID:
                            <asp:Label ID="Category_IDLabel" runat="server" Text='<%# Bind("Category_ID") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Description:
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                </div>
                <h3>List Of Product</h3>
                <div class="contentmanage">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Product ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" SortExpression="Category_ID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:CommandField HeaderText="Manage" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalesManagerConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Products] ([ID], [Category_ID], [Name], [Description]) VALUES (@ID, @Category_ID, @Name, @Description)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Category_ID] = @Category_ID, [Name] = @Name, [Description] = @Description WHERE [ID] = @ID">
                        <DeleteParameters>
                            <asp:Parameter Name="ID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ID" Type="String" />
                            <asp:Parameter Name="Category_ID" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Category_ID" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="ID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
               </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    </div>
    </div>
    </form>
</body>
</html>
