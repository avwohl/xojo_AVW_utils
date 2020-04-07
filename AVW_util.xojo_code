#tag Module
Protected Module AVW_util
	#tag Method, Flags = &h0
		Function get_parent_path(infile as FolderItem) As string
		  Var parent_folder_item As FolderItem=infile.Parent
		  Var  parent_path As String=parent_folder_item.NativePath
		  If parent_path.length>0 Then
		    If parent_path.Right(1) <> directory_seperator Then
		      parent_path=parent_path+directory_seperator
		    End If
		  End If
		  Return parent_path
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function get_unix_end_of_line() As string
		  Var  unix_end_of_line_string As String = Chr(10)
		  Return unix_end_of_line_string
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ignore_boolean(ignore_me as boolean)
		  #Pragma unused ignore_me
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isDigit(ch as Integer) As Boolean
		  Const Char_0 As Integer = 48
		  Const Char_9 As Integer = 57
		  If ch < Char_0 Then
		    Return False
		  End If
		  If  ch > Char_9 Then
		    Return False
		  End If
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isIntegerText(s as text) As boolean
		  Var  rg As New regex
		  rg.SearchPattern="^\d+$"
		  Var rg_match As RegExMatch = rg.Search(s)
		  Return rg_match<>Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function nth_digit(n as integer) As text
		  Return Chr(Asc("0")+n).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function to_text(astr as string) As text
		  Return astr.ToText
		End Function
	#tag EndMethod


	#tag Constant, Name = directory_seperator, Type = String, Dynamic = False, Default = \"", Scope = Protected
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"/"
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/"
	#tag EndConstant

	#tag Constant, Name = SEND_TO_SERVER_EOL, Type = Double, Dynamic = False, Default = \"10", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
