.class public Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;
.super Ljava/lang/Object;
.source "BFSEmailActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/email/BFSEmailActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Email"
.end annotation


# instance fields
.field private m_attachmentURI:Landroid/net/Uri;

.field private m_body:Ljava/lang/String;

.field private m_isHTML:Z

.field private m_subject:Ljava/lang/String;

.field private m_toRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_isHTML:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_subject:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_body:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;

    .line 24
    iput-object v1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_attachmentURI:Landroid/net/Uri;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_isHTML:Z

    return v0
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_attachmentURI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public addToRecipient(Ljava/lang/String;)V
    .locals 1
    .parameter "recipientEmail"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public setAttachmentURI(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_attachmentURI:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method public setHTMLBody(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_body:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_isHTML:Z

    .line 46
    return-void
.end method

.method public setPlainTextBody(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_body:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_isHTML:Z

    .line 40
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_subject:Ljava/lang/String;

    .line 34
    return-void
.end method
