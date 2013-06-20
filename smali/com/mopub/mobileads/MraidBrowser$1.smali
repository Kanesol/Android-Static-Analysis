.class Lcom/mopub/mobileads/MraidBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "MraidBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidBrowser;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v5, Lcom/mopub/mobileads/R$id;->browserBackButton:I

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 105
    .local v0, backButton:Landroid/widget/ImageButton;
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v1, Lcom/mopub/mobileads/R$drawable;->leftarrow:I

    .line 107
    .local v1, backImageResource:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 109
    iget-object v4, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v5, Lcom/mopub/mobileads/R$id;->browserForwardButton:I

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 110
    .local v2, forwardButton:Landroid/widget/ImageButton;
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v3, Lcom/mopub/mobileads/R$drawable;->rightarrow:I

    .line 112
    .local v3, fwdImageResource:I
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 113
    return-void

    .line 105
    .end local v1           #backImageResource:I
    .end local v2           #forwardButton:Landroid/widget/ImageButton;
    .end local v3           #fwdImageResource:I
    :cond_0
    sget v1, Lcom/mopub/mobileads/R$drawable;->unleftarrow:I

    goto :goto_0

    .line 110
    .restart local v1       #backImageResource:I
    .restart local v2       #forwardButton:Landroid/widget/ImageButton;
    :cond_1
    sget v3, Lcom/mopub/mobileads/R$drawable;->unrightarrow:I

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 96
    iget-object v1, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v2, Lcom/mopub/mobileads/R$id;->browserForwardButton:I

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 97
    .local v0, forwardButton:Landroid/widget/ImageButton;
    sget v1, Lcom/mopub/mobileads/R$drawable;->unrightarrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 98
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 63
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 68
    if-nez p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 70
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 71
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, host:Ljava/lang/String;
    const-string v4, "market:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "voicemail:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "sms:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "geo:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "google.streetview:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "play.google.com"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "market.android.com"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/mopub/mobileads/MraidBrowser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_1
    iget-object v3, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MraidBrowser;->finish()V

    .line 87
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, exception:Landroid/content/ActivityNotFoundException;
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start activity for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Ensure that your phone can handle this intent."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
