VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   Caption         =   "Form1"
   ClientHeight    =   9630
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   18390
   LinkTopic       =   "Form1"
   ScaleHeight     =   9630
   ScaleWidth      =   18390
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   11160
      TabIndex        =   10
      Text            =   "Text2"
      Top             =   1080
      Width           =   5295
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   17640
      Top             =   960
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H0000FF00&
      Caption         =   "HOME"
      Height          =   375
      Left            =   4440
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0000FF00&
      Caption         =   "ACTUALIZAR"
      Height          =   375
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H0000FF00&
      Caption         =   "ADELANTE"
      Height          =   375
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H0000FF00&
      Caption         =   "ATRAS"
      Height          =   375
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FF00&
      Caption         =   "IR"
      Height          =   375
      Left            =   10200
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   360
      Width           =   495
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   360
      Width           =   8655
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   8055
      Left            =   120
      TabIndex        =   0
      Top             =   1440
      Width           =   18015
      ExtentX         =   31776
      ExtentY         =   14208
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000012&
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   615
      Left            =   14400
      TabIndex        =   9
      Top             =   240
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000012&
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   735
      Left            =   11040
      TabIndex        =   8
      Top             =   240
      Width           =   3255
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000007&
      Caption         =   "URL:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   360
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
WebBrowser1.Navigate (Text1.Text)
End Sub

Private Sub Command3_Click()
WebBrowser1.GoBack
End Sub

Private Sub Command4_Click()
WebBrowser1.Refresh
End Sub

Private Sub Command5_Click()
WebBrowser1.Navigate ("www.google.com.ar")
End Sub

Private Sub Form_Load()
WebBrowser1.Navigate ("www.google.com.ar")
End Sub

Private Sub Text1_Change()
If Text1.Text = "" Then
Command1.MousePointer = 12
Else
Command1.MousePointer = 0
End If
End Sub

Private Sub Timer1_Timer()
Label3.Caption = Date
Label2.Caption = Time
Text2.Text = WebBrowser1.LocationURL
End Sub
