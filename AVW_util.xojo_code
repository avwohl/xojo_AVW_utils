#tag Module
Protected Module AVW_util
	#tag Method, Flags = &h0
		Function get_parent_path(infile as FolderItem) As string
		  // return the directory of a given filename
		  // the returned directory is suitable to add on a new file in the same dir
		  // for example:  if the input file is bar/foo.txt then bar/ would be returned
		  // This differs from the usual xojo infile.Parent.Native path as that
		  //  may have a trailing / or not depending on the OS
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
		  // used to call a function that returns a boolean but then not use the result
		  // in c++ this would be done via casting to void :
		  // (void)some_func();
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function isDigit(ch as Integer) As Boolean
		  // is the passed integer the ascii code for a digit
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
		  // the xojo IsNumeric funciton is currently bugged for text
		  // until it gets fixed used this
		  Var  rg As New regex
		  rg.SearchPattern="^\d+$"
		  Var rg_match As RegExMatch = rg.Search(s)
		  Return rg_match<>Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function nth_digit(n as integer) As text
		  // return the ascii character for the passed single digit integer
		  Return Chr(Asc("0")+n).ToText
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function to_text(astr as string) As text
		  // convert a string to text. Currently the same as .ToText
		  // however, it may be needed to set the character set also
		  // so doing the conversion here allows setting the character set also
		  // if the app needs that
		  Return astr.ToText
		End Function
	#tag EndMethod


	#tag Constant, Name = directory_seperator, Type = String, Dynamic = False, Default = \"", Scope = Protected
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"/"
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"/"
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
