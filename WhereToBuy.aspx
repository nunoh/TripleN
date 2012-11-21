﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WhereToBuy.aspx.cs" Inherits="where" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="where_image" class="content-image"></div>

    <div class="content-main">
        
        <p style="margin-top:0">
        Right now <strong>Triple N</strong> is available in some of Europe's capitals and few other cities. We are expading it day by day. Just keep checking for new updates.
        </p>

        <p>Where you can buy a <strong>Triple N</strong> right now:</p>

        <div id="gmaps">
            <iframe width="600" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps/ms?msa=0&amp;msid=204438229589098210006.0004ceee6d00a95af3348&amp;ie=UTF8&amp;t=p&amp;source=embed&amp;ll=48.748945,3.603516&amp;spn=23.222741,52.734375&amp;z=4&amp;output=embed"></iframe>
        </div>

        <div id="countries">
        <ul>
            <li>Portugal</li>
            <ul>
                <li>Porto</li>
                <li>Lisboa</li>
                <li>Portugal</li>
            </ul>
            
            <li>Spain</li>
            <ul>
                <li>Barcelona</li>
                <li>Madrid</li>
                <li>Valencia</li>
            </ul>

            <li>France</li>
            <ul>
                <li>Paris</li>
            </ul>

            <li>Germany</li>
            <ul>
                <li>Harmbug</li>
                <li>Berlin</li>
            </ul>

            <li>Denmark</li>
            <ul>
                <li>Horsens</li>
                <li>Aarhus</li>
                <li>Copenhagen</li>
            </ul>

            <!--
            <p>
            <li>United Kingdom</li>
            <ul>
                <li>London</li>
            </ul>
            </p>
            -->
                
        </ul>
        </p>
        </div>

    <div style="clear:both"></div>

    </div>
</asp:Content>

