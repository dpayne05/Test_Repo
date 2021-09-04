<%@ Page Language="C#" Debug="true" %>
<script runat="server">
void Page_Load(object sender,EventArgs e)
{
	int loop1, loop2;
	NameValueCollection colServerVariables;
	
	colServerVariables = Request.ServerVariables; 

	String[] arr1 = colServerVariables.AllKeys; 

	for (loop1 = 0; loop1 < arr1.Length; loop1++) 
	{
		string strKey = arr1[loop1];
		String[] arr2 = colServerVariables.GetValues(arr1[loop1]);
		
		for (loop2 = 0; loop2 < arr2.Length; loop2++) {
			Response.Write("<span style=\"font-weight:bold;\">" + strKey + "</span>: " + Server.HtmlEncode(arr2[loop2]) + "<br>");
		}
	}
}
</script>
