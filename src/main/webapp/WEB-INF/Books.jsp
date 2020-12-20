<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <script
            src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bookAJAX.js"/>"
    type="text/javascript"></script>
    <link href="<c:url value="/resources/css/bookstyle.css"/>"
          rel="stylesheet" type="text/css" media="all">
    <title>Books Page</title>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>
<br/>
<br/>
<h1>Add a book by ajax</h1>
<div class = "showAjax"></div>
<div class = "addBookFromResponse"></div>
<c:url var="addActionAjax" value="/books/add/ajax"/>
<form id="newBookForm" action="${addActionAjax}">
    <div>
        <label class="labelBookId" style="display: none">ID</label>
        <input class="inputBookId" readonly size="8" disabled value=""
               style="display: none"/>
    </div>
    <div>
        <label>Title</label>
        <input class="bookTitle"/>
    </div>
    <div>
        <label>Author</label>
        <input class="bookAuthor"/>
    </div>
    <div class="addDiv" style="display: block">
        <input class="sendBook" type="submit" value="Add book ajax" />
    </div>
    <div class="editDiv" style="display: none">
        <input class="editBook" type="submit" value="Edit book ajax"
               disabled="true"/>
    </div>
</form>
<h1>Booklist from ajax</h1>
<div class="fromAjax"></div>
</body>
</html>