.class public Lcom/backflipstudios/android/email/BFSEmailActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSEmailActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSEmailApplicationAddon"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "BFSEmailApplicationAddon"

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 141
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public sendEmail(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Z
    .locals 4
    .parameter "email"

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, retVal:Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, i:Landroid/content/Intent;
    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_isHTML:Z
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$000(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :goto_0
    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$100(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    const-string v2, "android.intent.extra.EMAIL"

    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_toRecipients:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$100(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    :cond_0
    const-string v2, "android.intent.extra.SUBJECT"

    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_subject:Ljava/lang/String;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$200(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v2, "android.intent.extra.TEXT"

    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_body:Ljava/lang/String;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$300(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 83
    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_attachmentURI:Landroid/net/Uri;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$400(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    const-string v2, "android.intent.extra.STREAM"

    #getter for: Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->m_attachmentURI:Landroid/net/Uri;
    invoke-static {p1}, Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;->access$400(Lcom/backflipstudios/android/email/BFSEmailActivityAddon$Email;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/backflipstudios/android/email/BFSEmailActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v3, "Send mail..."

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v1, 0x1

    .line 93
    :goto_1
    return v1

    .line 75
    :cond_2
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    goto :goto_1
.end method
