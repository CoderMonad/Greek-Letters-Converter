Public Number As Integer
Public Amount As Integer
Public Count As Integer



Public Sec_1 As Integer
Public Sec_2 As Integer
Public Sec_3 As Integer
Public Sec_4 As Integer
Public Sec_5 As Integer


Public Letter_1 As String
Public Letter_2 As String
Public Letter_3 As String
Public Letter_4 As String
Public Letter_5 As String







Sub Letters()
'
' Macro1 Macro
'
'Count = 1
Sec_1 = 0
Sec_2 = 0
Sec_3 = 0
Sec_4 = 0
Sec_5 = 0
Number = 0


'Do


Number = InputBox(Prompt:="Please Enter a Number", Title:="Number")
'Number = Count
ActiveCell.FormulaR1C1 = "" & Number & ""

If Number > 24 Then
' Big Section
Sec_2 = Application.Floor((Number - 1) / 24, 1)
Sec_1 = Number - Sec_2 * 24
Amount = 2
Else
'Small Section
Sec_1 = Number
Amount = 1

End If

    If Sec_2 > 24 Then

        Sec_3 = Application.Floor((Sec_2 - 1) / 24, 1)
        Sec_2 = Sec_2 - Sec_3 * 24
        Amount = 3
    End If

    If Sec_3 > 24 Then

        Sec_4 = Application.Floor((Sec_3 - 1) / 24, 1)
        Sec_3 = Sec_3 - Sec_4 * 24
        Amount = 4
    End If

    If Sec_4 > 24 Then

        Sec_5 = Application.Floor((Sec_4 - 1) / 24, 1)
        Sec_4 = Sec_4 - Sec_5 * 24
        Amount = 5
    End If






Letter_1 = Greek(Sec_1)
Letter_2 = Greek(Sec_2)
Letter_3 = Greek(Sec_3)
Letter_4 = Greek(Sec_4)
Letter_5 = Greek(Sec_5)





ActiveCell.Offset(0, 1).Range("A1").Select
ActiveCell.FormulaR1C1 = "" & Letter_5 & ""

ActiveCell.Offset(0, 1).Range("A1").Select
ActiveCell.FormulaR1C1 = "" & Letter_4 & ""

ActiveCell.Offset(0, 1).Range("A1").Select
ActiveCell.FormulaR1C1 = "" & Letter_3 & ""

ActiveCell.Offset(0, 1).Range("A1").Select
ActiveCell.FormulaR1C1 = "" & Letter_2 & ""

ActiveCell.Offset(0, 1).Range("A1").Select
ActiveCell.FormulaR1C1 = "" & Letter_1 & ""

ActiveCell.Offset(1, -5).Range("A1").Select


'Count = Count + 1

'Loop While Count < 650






End Sub

Function Greek(n As Integer) As String
If n = 1 Then
Greek = "Alpha"
ElseIf n = 2 Then
Greek = "Beta"
ElseIf n = 3 Then
Greek = "Gamma"
ElseIf n = 4 Then
Greek = "Delta"
ElseIf n = 5 Then
Greek = "Epsilon"
ElseIf n = 6 Then
Greek = "Zeta"
ElseIf n = 7 Then
Greek = "Eta"
ElseIf n = 8 Then
Greek = "Theta"
ElseIf n = 9 Then
Greek = "Iota"
ElseIf n = 10 Then
Greek = "Kappa"
ElseIf n = 11 Then
Greek = "Lambda"
ElseIf n = 12 Then
Greek = "Mu"
ElseIf n = 13 Then
Greek = "Nu"
ElseIf n = 14 Then
Greek = "Xi"
ElseIf n = 15 Then
Greek = "Omicron"
ElseIf n = 16 Then
Greek = "Pi"
ElseIf n = 17 Then
Greek = "Rho"
ElseIf n = 18 Then
Greek = "Sigma"
ElseIf n = 19 Then
Greek = "Tau"
ElseIf n = 20 Then
Greek = "Upsilon"
ElseIf n = 21 Then
Greek = "Phi"
ElseIf n = 22 Then
Greek = "Chi"
ElseIf n = 23 Then
Greek = "Psi"
ElseIf n = 24 Then
Greek = "Omega"
Else
Greek = ""
End If

End Function

