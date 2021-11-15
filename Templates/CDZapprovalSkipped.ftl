<#setting time_zone="America/New_York">
<html>
  <body>
    <table width="100%" bgcolor="#FFFFFF">
    <tr>
      <td colspan="3"><b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
Active</span></font></i></b> <b><i><font size="4" color="#4A6D00" face="Verdana"><span style='font-size:13.5pt;font-family:Verdana;color:#4A6D00;font-weight:bold;font-style:italic'>
Pay</span></font></i></b> <b><i><font size="4" color="#000099" face="Verdana"><span style='font-size:13.5pt; font-family:Verdana;color:#000099;font-weight:bold;font-style:italic'>
&trade;</span></font></i></b>
      </td>
    </tr>
  <tr>
    <td colspan="3"><font size="2" face="Verdana"><br>
    <b>CDZ Request Approval Escalated</b><br>
    <br>
    Dear ${user.displayName}:<br>
    <br>
Please be aware that this CDZ Request has been escalated to your manager for approval because it was not reviewed and approved within the allotted time.</font>
<font size="2" face="Verdana"><br>
Please click <a href="${baseURL}/filenet/apdocument.do?wobNumber=${document.wobNumber}&amp;ceDocumentId=${document.ceDocumentId}">here</a> to view the request.
					<table>
						<tr>
							<td><font size="2" face="Verdana">&nbsp;</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Type:</b></font></td>
							<td><font size="2" face="Verdana">${document.type}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Subtype:</b></font></td>
							<td><font size="2" face="Verdana">${document.subType}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Requested By:</b></font></td>
							<td><font size="2" face="Verdana">${document.requesterName}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Request Date:</b></font></td>
							<td><font size="2" face="Verdana">${document.createDate?datetime}</font></td>
						</tr>
						<tr>
							<td><b><font size="2" face="Verdana">Request Amount:</b></font></td>
							<td><font size="2" face="Verdana">${document.grossAmount?string(",##0.00")}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Station Route:</b></font></td>
							<td><font size="2" face="Verdana">${document.routingCode}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">First Approver:</b></font></td>
							<td><font size="2" face="Verdana">${document.firstApproverName}</font></td>
						</tr>		
						<tr>
							<td><b><font size="2" face="Verdana">Due Date:</b></font></td>
							<td><font size="2" face="Verdana">${document.processInformation.deadline?datetime}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">Ticket #:</b></font></td>
							<td><font size="2" face="Verdana">${document.seqId?string("############")}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">CM Filenumber:</b></font></td>
							<td><font size="2" face="Verdana">${document.tbdString6}</font></td>
						</tr>
						<tr>
							<td width="50%"><b><font size="2" face="Verdana">CM ID:</b></font></td>
							<td><font size="2" face="Verdana">${document.tbdString9}</font></td>
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
