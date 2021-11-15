<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<CDZRequests>
<#list documentsList as document>
    <CDZ>
		<#if document.seqId?exists && document.seqId??>
        <SeqId>${document.seqId?long?c}</SeqId>
		<#else>
		<SeqId xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>		
		<#if document.tbdString6?exists && document.tbdString6??>
        <FileNumber>${document.tbdString6}</FileNumber>
		<#else>
		<FileNumber xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>		
		<#if document.vendorId?exists && document.vendorId??>
        <VendorNumber><#outputformat "XML">${document.vendorId?upper_case}</#outputformat></VendorNumber>
		<#else>
		<VendorNumber xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>		
        <AddressType xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		<#if document.number?exists && document.number??>
        <InvoiceNumber><#outputformat "XML">${document.number}</#outputformat></InvoiceNumber>
		<#else>
		<InvoiceNumber xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>		
		<#if document.createDate?exists && document.createDate??>
        <InvoiceDate>${document.createDate}</InvoiceDate>
		<#else>
		<InvoiceDate xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>		
		<#if document.grossAmount?exists && document.grossAmount??>
        <PaymentAmount>${document.grossAmount}</PaymentAmount>
		<#else>
		<PaymentAmount xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>			
        <PaymentMethod>01</PaymentMethod>
        <PaymentTerm xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <FreightAmount xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <TaxAmount xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <TaxBasisAmount xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <SeparatePayment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <HoldInvoice xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		<#if document.group?exists && document.group??>
		<PaymentMessage>${document.group}</PaymentMessage>
		<#else>
		<PaymentMessage xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>
		<#if document.tbdString10?exists && document.tbdString10??>
        <GLAccountNumber>${document.tbdString10}</GLAccountNumber>
		<#else>
		<GLAccountNumber xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
		</#if>
		<ExpenseAmount xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:nil="true"/>
        <CompanyCode>CDZ</CompanyCode>
    </CDZ>
</#list>
</CDZRequests>