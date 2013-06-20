.class Lcom/backflipstudios/android/web/BFSWebViewActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "BFSWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/web/BFSWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/backflipstudios/android/web/BFSWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/web/BFSWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/backflipstudios/android/web/BFSWebViewActivity$Client;->this$0:Lcom/backflipstudios/android/web/BFSWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "webview"
    .parameter "url"

    .prologue
    .line 59
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
