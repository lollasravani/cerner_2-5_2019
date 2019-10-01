'cerner_2^5_2019'
'This program will verify the format of the input date in string format.'
Module Module1
    Sub Main()
        Dim strdate, strformat As String
        Dim idxOfY1, idxOfY2 As Integer
        Dim isValid As Boolean

        strdate = "31/01/2019"
        strformat = "dd/MM/yyyy"

        strformat.Replace("m", "M")
        isValid = strdate.Length = strformat.Length

        If isValid Then
            Dim newdate As Date
            Date.TryParseExact(strdate, strformat, System.Globalization.CultureInfo.CurrentCulture, System.Globalization.DateTimeStyles.None, newdate)

            With strformat
                idxOfY1 = .IndexOf("y")
                idxOfY2 = .LastIndexOf("y")
                isValid = newdate.Year = strdate.Substring(idxOfY1, idxOfY2 - idxOfY1 + 1)
            End With
        End If
        Console.WriteLine(IIf(isValid, "Valid", "Invalid"))
    End Sub
End Module