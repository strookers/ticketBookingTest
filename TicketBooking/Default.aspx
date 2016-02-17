<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TicketBooking._Default" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Seat Booking</title>
    <link href="favicon.ico" rel="Shortcut Icon" type="image/x-icon"/>
    <script type="text/javascript">
        function seat(s) {
            document.getElementById("" + s + "").src="images/chair/Gy_chair.gif";
        }
    </script>
    <style type="text/css">
    img
    {
        width:25px;
        height:30px;
        margin-bottom:10px;
        cursor:none;
    }
    .p_seat
    {
        color: #575757;
	    font-size: 14px;
	    font-weight: bold;
        margin-left:-25px;
        padding:10px 14px 5px 0px;
    }
   </style>
</head>
<body>
    <form id="form1" runat="server">

    <div style="width:690px;height:600px;">
        <hr />
         <label for="name" style="font-size: x-large; font-family: 'Adobe Garamond Pro Bold';color:#2c6d9a; position: relative;margin-left:300px">Booked / Available Seat's</label>
        <br />
                 
                    <%   
                        int i = 1;
                        string row="", seat_no="";
                        while (i <=set )
                        {
                            if (i <= gold_seat)
                                row = "A";
                            else
                                row = "B";
                            if(i<=9)
                                seat_no = row+"0"+ i;
                            else
                                seat_no = row + i;
                            string src = checkSeat(seat_no);
                            %>
        
                            <%=chair %><span class="p_seat" > <%=seat_no %>   </span>
                            <%if(i==gold_seat){ %>
        <hr />
                                		<br />

                            <%} %>
                      
                    <%     i++;
                        }
                    %>
<hr />        
							</div>
    </form>

 </body>
</html>

