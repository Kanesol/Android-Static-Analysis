.class Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "BFSBackflipLegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;->this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .parameter "webview"
    .parameter "url"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;->this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    #getter for: Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->access$000(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;->this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    #getter for: Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->access$000(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;->this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    #getter for: Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->access$000(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, product:Ljava/lang/String;
    const-string v2, "javascript:(function() { var element = document.getElementById(\'%s\'); if (element) { element.style.display = \'block\'; } })();"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #product:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 96
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;->this$0:Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;

    invoke-virtual {v2, v0}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->startActivity(Landroid/content/Intent;)V

    .line 99
    const/4 v2, 0x1

    return v2
.end method
