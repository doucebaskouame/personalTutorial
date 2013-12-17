<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Modifier personne</title>
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
		<h:panelGrid border="0" columns="3" cellpadding="5">
			<h:outputText value="Own Name" />
			<h:inputText id="firstName"	value="#{personCtrl.editPerson.firstName}" required="true"
				requiredMessage="Own Name is a Must" />
			<h:message for="firstName" />

			<h:outputText value="Family Name" />
			<h:inputText id="lastName" value="#{personCtrl.editPerson.lastName}"
				required="true" requiredMessage="Family Name Is a Must" />
			<h:message for="firstName" />
			<h:outputText />
			<h:commandButton value="Update" action="#{personCtrl.updatePerson}" />
		</h:panelGrid>
	</h:form>
</f:view>
</body>
</html>