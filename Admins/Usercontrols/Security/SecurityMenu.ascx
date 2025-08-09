<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SecurityMenu.ascx.cs" Inherits="BGBeauty_Website.Admins.Usercontrols.Security.SecurityMenu" %>
<div class="btn-group pull-right">
        <button type="button" class="btn font-green  btn-outline dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
            Security <i class="fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu pull-right" role="menu">
            <li>
                <a href="/Admins/Modules/Security/UsersList">Users</a>
            </li>
            <li>
                <a href="/Admins/Modules/Security/RolesList">Roles</a>
            </li>
            <li>
                <a href="/Admins/Modules/Security/UserInRole">User In Role</a>
            </li>
            <li>
                <a href="/Admins/Modules/Security/RoleMenuPermission">Role Permission</a>
            </li>
            <%--<li class="divider"></li>--%>
            
        </ul>
    </div>