.class public Lcom/backflipstudios/android/web/BFSWebViewActivity;
.super Landroid/app/Activity;
.source "BFSWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/web/BFSWebViewActivity$Client;
    }
.end annotation


# static fields
.field public static final EXTRA_PAGE_URL:Ljava/lang/String; = "__bfs_extra_web_view_page_url"


# instance fields
.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, -0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    .line 32
    iget-object v1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    iget-object v1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/backflipstudios/android/web/BFSWebViewActivity$Client;

    invoke-direct {v2, p0}, Lcom/backflipstudios/android/web/BFSWebViewActivity$Client;-><init>(Lcom/backflipstudios/android/web/BFSWebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    invoke-virtual {p0}, Lcom/backflipstudios/android/web/BFSWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "__bfs_extra_web_view_page_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, page_url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/backflipstudios/android/web/BFSWebViewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method
