Module Module1

    Sub Main()

        ' Eicar test for Antivirus testing.
        ' Writes EICAR testfile to disk, downloads it from eicar.org over HTTP and HTTPS

        Dim sTemp As String = Environ("temp")
        Dim sEicarstring As String = "X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*"

        ' Dropper
        Try
            System.IO.File.WriteAllText(sTemp & "\Eicar-test-1.exe", sEicarstring) ' Testcase 1: Direct to disk
        Catch ex As Exception
            MsgBox("Failed on Testcase 1:" & vbCrLf & ex.Message)
        End Try

        ' Downloader
        Dim w As New System.Net.WebClient
        w.Headers("User-Agent") = sEicarstring

        Try ' Testcase 2: Plain HTTP
            w.DownloadFile("http://www.eicar.org/download/eicar.com.txt", sTemp & "\Eicar-test-2.exe")
        Catch ex As Exception
            MsgBox("Failed on Testcase 2:" & vbCrLf & ex.Message)
        End Try

        Try ' Testcase 3: HTTPS
            w.DownloadFile("https://www.eicar.org/download/eicar.com.txt", sTemp & "\Eicar-test-3.exe")
        Catch ex As Exception
            MsgBox("Failed on Testcase 3:" & vbCrLf & ex.Message)
        End Try

        Try ' Testcase 4: Plain HTTP, ZIP File
            w.DownloadFile("http://www.eicar.org/download/eicar_com.zip", sTemp & "\Eicar-test-4.zip")
        Catch ex As Exception
            MsgBox("Failed on Testcase 4:" & vbCrLf & ex.Message)
        End Try

        Try ' Testcase 5: Plain HTTP, Base64 format
            w.DownloadFile("https://pastebin.com/raw/Ui1uKjqQ", sTemp & "\Eicar-test-5.B64.txt")
        Catch ex As Exception
            MsgBox("Failed on Testcase 5:" & vbCrLf & ex.Message)
        End Try

        w = Nothing

    End Sub

End Module
