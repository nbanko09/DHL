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
    <b>Expense Payment</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br>
Your expense report was processed and paid in the last payment run. </font>
					<br>
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Report #:</b></font></td>
							<td><font size="2" face="Verdana">${document.seqId?c}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Submitter:</b></font></td>
							<td><font size="2" face="Verdana">${document.originatorName}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Claimant:</b></font></td>
							<td><font size="2" face="Verdana">${document.requesterName}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Report Date:</b></font></td>
							<td><font size="2" face="Verdana">${document.date?date}</font></td>
						</tr>
						
						<tr>
							<td><b><font size="2" face="Verdana">Report Amount:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")}</font></td>
						</tr>
						
						<tr>
							<td><b><font size="2" face="Verdana">Scan Ref:</b></font></td>
							<td><font size="2" face="Verdana">${document.uploadRef}</font></td>
						</tr>
						
					</table>
		<table>
			<tr>
				<td>	<font size="1" color="#FFFFFF" face="Verdana">DO NOT EDIT/DELETE THE LINES BELOW<br>
						DOCUMENTID:0123456789=${document.seqId?string("############")}<br>
						SENDERSEMAIL:[${user.email}&]</font>
				</td>
			</tr>
		</table>
	</body>
</html>
