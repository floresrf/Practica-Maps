﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Practica_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Google Maps Picker</title>
    <!--Bootstrap y Query-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> 
    
    <!--complementos de plugin-->
    <script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyDlv2PNwLztXH4VUYD9J9jW5vuv-T6YzRs'></script>
    <script src="js/locationpicker.jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!--Crear el boton-->
            <button type="button" data-toggle="modal" data-target="#ModalMap" class="btn btn-default">
                <span class="glyphicon glyphicon-map-marker"></span><span id="ubicacion">Seleccionar ubicación</span>
            </button>
            <!--Proveniente del JS-->
            <style>
                .pac-container{
                    z-index:99999;
                }
            </style>
            <!--Creación del modal-->
            <div class="modal fade" id="ModalMap" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Ubicación</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="ModalMapaddress" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <!--boton de cerrar-->
                                    <div class="col-sm-1">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                            <span aria-hidden="true">&times</span>
                                        </button>
                                    </div>
                                </div>
                                <div id="ModalMapPrewiev" style="width:100%; height:400px;"></div>
                                <div class="clearfix">&nbsp;</div>
                                <script>
                                    $('#ModalMapPrewiev').locationpicker({
                                        radius: 0,
                                        location:   {
                                            latitude: 27.36689135031209, 
                                            longitude: -109.93121435887369
                                            }
                                        });
                                    $('ModalMap').on('show.bs.modal', function () {
                                        $('#ModalMapPrewiev').locationpicker('autosize');
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </form>
</body>
</html>
