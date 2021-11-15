<#setting time_zone="America/New_York">
<html>
	<body>
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td colspan="3">
					<img src="${baseURL}/images/activeOps.jpg" />
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<font size="2" face="Verdana"><br>
						<u>Work Summary Notification</u><br>
						<br>
						Dear ${user.displayName},<br>
						<br>
						The following items are in your ActiveOps inbox:
					</font>
					<hr>
				</td>
			</tr>
		</table>		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td><font size="2" face="Verdana"><b>No.</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Queue</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Ticket#</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Type</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Product</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Request Date</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Deadline</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Station/Location</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Requester</b></font>
				</td>
				<td><font size="2" face="Verdana"><b>Link</b></font>
				</td>
			</tr>

			<#list documents as doc>
				<tr>
					<td><font size="2" face="Verdana">${doc_index + 1}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.processInformation.queueName}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.seqId?string("############")}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.type}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.processCode}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.createDate?datetime}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.processInformation.deadline?datetime}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.group}</font>
					</td>
					<td><font size="2" face="Verdana">${doc.requesterName}</font>
					</td>
					<td><font size="2" face="Verdana">
					<a href="${baseURL}/filenet/apdocument.do?wobNumber=${doc.wobNumber}&amp;ceDocumentId=${doc.ceDocumentId}">Click here</a>
					</font></td>
				</tr>
			</#list>  
			
		</table>
		
		<table width="100%" bgcolor="#FFFFFF">
			<tr>
				<td>
					<br>
					<font size="2" face="Verdana">This is an automated system message sent from ActiveOps. Please do not respond.</font>
				</td>
			</tr>
			
		</table>
		
	</body>
</html>