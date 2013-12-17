<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Persons List</title>
</head>
<body>
<f:view>

<h:panelGrid columns="2" cellpadding="10">
	<h:outputLink value="list.jsp">
		<h:outputText value="List" />
	</h:outputLink>

	<h:outputLink value="add.jsp">
		<h:outputText value="Add" />
	</h:outputLink>
</h:panelGrid>
	<h:form>
	<h:dataTable border="0" rules="all" value="#{personCtrl.persons}" var="p">
	
		<h:column>
			<f:facet name="header">
				<h:outputText value="Own Name" />
			</f:facet>
			<h:outputText value="#{p.firstName}" />
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Family Name" />
			</f:facet>
			<h:outputText value="#{p.lastName}" />
		</h:column>
		
		<h:column>
			<f:facet name="header">
				<h:outputText value="Opérations" />
			</f:facet>			
			<h:commandButton value="Edit" action="#{personCtrl.editPerson()}" />
			<h:commandButton value="Delete" action="#{personCtrl.deletePerson()}" />
		</h:column>		
	</h:dataTable>
	</h:form>
</f:view>
</body>
</html>