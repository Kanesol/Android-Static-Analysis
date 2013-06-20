.class public Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;
.super Landroid/app/Activity;
.source "BFSBackflipLegalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;
    }
.end annotation


# static fields
.field public static final EXTRA_PRODUCT_LIST:Ljava/lang/String; = "__bfs_extra_legal_product_list"


# instance fields
.field private m_products:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    .line 25
    iput-object v0, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getHtml()Ljava/lang/String;
    .locals 10

    .prologue
    .line 49
    const/4 v6, 0x0

    .line 51
    .local v6, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    .line 52
    .local v2, istream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 54
    .local v3, ostream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/backflipstudios/android/engine/R$raw;->legal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 56
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .local v4, ostream:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 60
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 62
    .local v5, read:I
    :cond_0
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v2, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 63
    if-lez v5, :cond_1

    .line 64
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 66
    :cond_1
    if-gtz v5, :cond_0

    .line 68
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 72
    .end local v6           #retVal:Ljava/lang/String;
    .local v7, retVal:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 74
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 77
    :cond_2
    :goto_0
    if-eqz v4, :cond_7

    .line 79
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .line 84
    .end local v0           #buffer:[B
    .end local v5           #read:I
    .end local v7           #retVal:Ljava/lang/String;
    .restart local v6       #retVal:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v6

    .line 80
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v6           #retVal:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v4       #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #read:I
    .restart local v7       #retVal:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #retVal:Ljava/lang/String;
    .restart local v6       #retVal:Ljava/lang/String;
    goto :goto_1

    .line 69
    .end local v0           #buffer:[B
    .end local v5           #read:I
    :catch_1
    move-exception v1

    .line 70
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v8, "bfsplatform"

    const-string v9, "BFSBackflipLegalActivity.getHtml()"

    invoke-static {v8, v9, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    if-eqz v2, :cond_4

    .line 74
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 77
    :cond_4
    :goto_3
    if-eqz v3, :cond_3

    .line 79
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 80
    :catch_2
    move-exception v8

    goto :goto_1

    .line 72
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_5

    .line 74
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 77
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 79
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 80
    :cond_6
    :goto_6
    throw v8

    .line 75
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v6           #retVal:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v4       #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #read:I
    .restart local v7       #retVal:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v5           #read:I
    .end local v7           #retVal:Ljava/lang/String;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #retVal:Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 80
    :catch_6
    move-exception v9

    goto :goto_6

    .line 72
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #ostream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 69
    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #ostream:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v3           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v6           #retVal:Ljava/lang/String;
    .restart local v0       #buffer:[B
    .restart local v4       #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #read:I
    .restart local v7       #retVal:Ljava/lang/String;
    :cond_7
    move-object v3, v4

    .end local v4           #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ostream:Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7           #retVal:Ljava/lang/String;
    .restart local v6       #retVal:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    .line 33
    iget-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    iget-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;

    invoke-direct {v2, p0}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity$Client;-><init>(Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 36
    invoke-direct {p0}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->getHtml()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, html:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "__bfs_extra_legal_product_list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_products:Ljava/util/ArrayList;

    .line 44
    iget-object v1, p0, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->m_webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/backflipstudios/android/legal/BFSBackflipLegalActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method
