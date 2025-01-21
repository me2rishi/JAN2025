<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://practice.com/TestSOAApplication/BillingSystem/BillingSystemBPEL" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BillingSystemBPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="bsRequest" namespace="http://practice.com/TestSOAApplication/BillingSystem/BillingSystemBPEL"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/BillingSystemBPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="bsResponse" namespace="http://practice.com/TestSOAApplication/BillingSystem/BillingSystemBPEL"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [TUE JAN 21 06:45:34 PST 2025].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:bsResponse>
         <ns0:orderID>
            <xsl:value-of select="/ns0:bsRequest/ns0:orderID"/>
         </ns0:orderID>
         <xsl:for-each select="/ns0:bsRequest/ns0:itemInfo">
            <ns0:itemInfo>
               <ns0:itemName>
                  <xsl:value-of select="ns0:itemName"/>
               </ns0:itemName>
               <ns0:itemCost>
                  <xsl:value-of select="ns0:itemCost"/>
               </ns0:itemCost>
            </ns0:itemInfo>
         </xsl:for-each>
         <ns0:tostcost>
            <xsl:value-of select="sum (/ns0:bsRequest/ns0:itemInfo/ns0:itemCost )"/>
         </ns0:tostcost>
      </ns0:bsResponse>
   </xsl:template>
</xsl:stylesheet>
