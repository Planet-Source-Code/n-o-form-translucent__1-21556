VERSION 5.00
Object = "{0D452EE1-E08F-101A-852E-02608C4D0BB4}#2.0#0"; "FM20.DLL"
Begin VB.Form Form1 
   BackColor       =   &H00FF8080&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5280
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5280
   ScaleWidth      =   7155
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture3 
      BorderStyle     =   0  'None
      Height          =   285
      Left            =   6840
      Picture         =   "translucent.frx":0000
      ScaleHeight     =   285
      ScaleWidth      =   255
      TabIndex        =   5
      Top             =   0
      Width           =   255
   End
   Begin VB.PictureBox Picture2 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   4965
      Index           =   2
      Left            =   7080
      Picture         =   "translucent.frx":159B
      ScaleHeight     =   4965
      ScaleWidth      =   75
      TabIndex        =   4
      Top             =   310
      Width           =   75
   End
   Begin VB.PictureBox Picture2 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   75
      Index           =   1
      Left            =   0
      Picture         =   "translucent.frx":2E47
      ScaleHeight     =   75
      ScaleWidth      =   7110
      TabIndex        =   3
      Top             =   5200
      Width           =   7110
   End
   Begin VB.PictureBox Picture2 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   4965
      Index           =   0
      Left            =   0
      Picture         =   "translucent.frx":493F
      ScaleHeight     =   4965
      ScaleWidth      =   75
      TabIndex        =   2
      Top             =   310
      Width           =   75
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      BorderStyle     =   0  'None
      Height          =   300
      Left            =   0
      Picture         =   "translucent.frx":61EB
      ScaleHeight     =   300
      ScaleWidth      =   7185
      TabIndex        =   0
      Top             =   0
      Width           =   7185
      Begin VB.Label mycaption 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "My Caption"
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   9
            Charset         =   255
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   180
         Left            =   120
         TabIndex        =   1
         Top             =   70
         Width           =   915
      End
   End
   Begin MSForms.ComboBox ComboBox1 
      Height          =   375
      Left            =   360
      TabIndex        =   9
      Top             =   1080
      Width           =   1455
      VariousPropertyBits=   746604563
      DisplayStyle    =   3
      Size            =   "2566;661"
      MatchEntry      =   1
      ShowDropButtonWhen=   2
      Value           =   "Combo Box"
      FontHeight      =   165
      FontCharSet     =   238
      FontPitchAndFamily=   2
   End
   Begin MSForms.CommandButton CommandButton2 
      Height          =   375
      Left            =   6000
      TabIndex        =   8
      Top             =   4680
      Width           =   975
      VariousPropertyBits=   19
      Caption         =   "Exit"
      Size            =   "1720;661"
      FontHeight      =   165
      FontCharSet     =   238
      FontPitchAndFamily=   2
      ParagraphAlign  =   3
   End
   Begin MSForms.TextBox TextBox1 
      Height          =   2685
      Left            =   3960
      TabIndex        =   7
      Top             =   480
      Width           =   2865
      VariousPropertyBits=   -327137261
      Size            =   "5054;4736"
      Value           =   "Text Box"
      FontHeight      =   165
      FontCharSet     =   238
      FontPitchAndFamily=   2
      ParagraphAlign  =   3
   End
   Begin MSForms.OptionButton OptionButton1 
      Height          =   345
      Left            =   360
      TabIndex        =   6
      Top             =   600
      Width           =   1380
      VariousPropertyBits=   1015023635
      BackColor       =   16744576
      ForeColor       =   -2147483630
      DisplayStyle    =   5
      Size            =   "2434;609"
      Value           =   "0"
      Caption         =   "Option Button"
      FontHeight      =   165
      FontCharSet     =   238
      FontPitchAndFamily=   2
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()
MakeTranslucent Me, &HFF8080
End Sub

Private Sub Form_Load()
Me.caption = "Translucent form example, using VB transparent controles!"
mycaption.caption = Form1.caption
MakeTranslucent Me, &HFF8080
End Sub

Private Sub Form_Paint()
MakeTranslucent Me, &HFF8080
End Sub

Private Sub mycaption_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Globals.DragForm Me
MakeTranslucent Me, &HFF8080
End If
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
Globals.DragForm Me
MakeTranslucent Me, &HFF8080
End If
End Sub

Private Sub Picture3_Click()
End
End Sub
