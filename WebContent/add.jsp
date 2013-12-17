<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
			<h:inputText id="firstName" value="#{personCtrl.newPerson.firstName}"
				required="true" requiredMessage="Own Name Is a Must" />
			<h:message for="firstName" />

			<h:outputText value="family Name" />
			<h:inputText id="lastName" value="#{personCtrl.newPerson.lastName}"
				required="true" requiredMessage="family Name Is a Must" />
			<h:message for="firstName" />
			<h:outputText />
			<h:commandButton value="Add" action="#{personCtrl.createPerson()}" />
		</h:panelGrid>
	</h:form>
</f:view>

</body>
</html>