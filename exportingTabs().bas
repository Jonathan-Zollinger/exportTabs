Attribute VB_Name = "Module1"
Sub exportingTabs()

' this program individually prints the tabs of a workbook, saving the PDF as the name of the tab within the same folder as the excel file.

    'define variables
    Dim tabCount    As Integer
    Dim i           As Integer
        
    'figure total tab count
    tabCount = ActiveWorkbook.Worksheets.Count
    
    'turn of screen updates to stop flickering
    Application.ScreenUpdating = False
    
    
    'cycle through tabs and export them
    For i = 1 To tabCount
    
        Sheets(i).Select
        
        ActiveSheet.ExportAsFixedFormat _
            Type:=xlTypePDF, _
            fileName:=ActiveWorkbook.Path & "\" & Sheets(i).Name & ".pdf", _
            Quality:=xlQualityStandard, _
            IncludeDocProperties:=True, _
            IgnorePrintAreas:=False, _
            OpenAfterPublish:=False
        
    Next i
    
    'turn the screen updates back on
    Application.ScreenUpdating = True
    
End Sub
