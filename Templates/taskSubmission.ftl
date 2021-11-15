<#setting time_zone="America/New_York">
<html>
  <body>
    <table width="100%" bgcolor="#D5DCE8">
    <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
  <tr>
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>Request Submitted</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br>
Your request has been submitted. Your ticket number is shown below.</font>
<font size="2" face="Verdana"><br>
Please click <a href="${baseURL}/filenet/apdocument.do?wobNumber=${document.wobNumber}&amp;ceDocumentId=${document.ceDocumentId}">
here</a> to view your request.

</font><br>

		<table>
			<tr>
			<td width="50%"><font size="2" face="Verdana">.</font></td>
			</tr>
				
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b><u>Request Details</u>:</b></font></td>
			</tr>
					
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b>Ticket Number:</b></font></td>
			<td><font size="2" face="Verdana">${document.seqId?c}</font></td>
			</tr>
								
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b>Requestor Name:</b></font></td>
			<td><font size="2" face="Verdana">${document.requesterName}</font></td>
			</tr>
				
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b>Control Station:</b></font></td>
			<td><font size="2" face="Verdana">${document.group}</font></td>
			</tr>
		
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b>Request Type:</b></font></td>
			<td><font size="2" face="Verdana">${document.processCode}</font></td>
			</tr>
					
			<tr>
			<td width="50%"><font size="2" face="Verdana"><b>Customer Name:</b></font></td>
			<td><font size="2" face="Verdana">${document.scanVendorName}</font></td>
			</tr>
		</table>
		
		<table>
			<tr>
				<td>	<font size="1" color="#D5DCE8" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
				</td>
			</tr>
		</table>
	</body>
</html>
