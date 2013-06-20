.class public Lcom/mopub/mobileads/MraidView;
.super Landroid/webkit/WebView;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MraidView$OnOpenListener;,
        Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;,
        Lcom/mopub/mobileads/MraidView$OnFailureListener;,
        Lcom/mopub/mobileads/MraidView$OnReadyListener;,
        Lcom/mopub/mobileads/MraidView$OnCloseListener;,
        Lcom/mopub/mobileads/MraidView$OnExpandListener;,
        Lcom/mopub/mobileads/MraidView$MraidWebChromeClient;,
        Lcom/mopub/mobileads/MraidView$MraidWebViewClient;,
        Lcom/mopub/mobileads/MraidView$PlacementType;,
        Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;,
        Lcom/mopub/mobileads/MraidView$ExpansionStyle;,
        Lcom/mopub/mobileads/MraidView$ViewState;,
        Lcom/mopub/mobileads/MraidView$MraidListenerInfo;
    }
.end annotation


# static fields
.field public static final AD_CONTAINER_LAYOUT_ID:I = 0x66

.field private static final LOGTAG:Ljava/lang/String; = "MraidView"

.field public static final MODAL_CONTAINER_LAYOUT_ID:I = 0x65

.field public static final PLACEHOLDER_VIEW_ID:I = 0x64


# instance fields
.field private mBrowserController:Lcom/mopub/mobileads/MraidBrowserController;

.field private mDisplayController:Lcom/mopub/mobileads/MraidDisplayController;

.field private mHasFiredReadyEvent:Z

.field private mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

.field private final mPlacementType:Lcom/mopub/mobileads/MraidView$PlacementType;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->ENABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v2, Lcom/mopub/mobileads/MraidView$PlacementType;->INLINE:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V
    .locals 0
    .parameter "context"
    .parameter "expStyle"
    .parameter "buttonStyle"
    .parameter "placementType"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object p4, p0, Lcom/mopub/mobileads/MraidView;->mPlacementType:Lcom/mopub/mobileads/MraidView$PlacementType;

    .line 96
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/MraidView;->initialize(Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/MraidDisplayController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mDisplayController:Lcom/mopub/mobileads/MraidDisplayController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/MraidView$PlacementType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mPlacementType:Lcom/mopub/mobileads/MraidView$PlacementType;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/MraidView;Ljava/net/URI;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MraidView;->tryCommand(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mopub/mobileads/MraidView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/mopub/mobileads/MraidView;->mHasFiredReadyEvent:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mopub/mobileads/MraidView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidView;->mHasFiredReadyEvent:Z

    return p1
.end method

.method private copyRawResourceToFilesDir(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resourceId"
    .parameter "destinationFilename"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 308
    .local v5, is:Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, destinationPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, destinationFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 320
    .local v0, b:[B
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, n:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 321
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 323
    .end local v6           #n:I
    :catch_0
    move-exception v3

    .line 324
    .local v3, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    .end local v2           #destinationPath:Ljava/lang/String;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 329
    .end local v0           #b:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :goto_1
    return-object v2

    .line 314
    .restart local v2       #destinationPath:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 315
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v2, ""

    goto :goto_1

    .line 326
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #b:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #n:I
    :cond_0
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v7

    goto :goto_1

    .end local v6           #n:I
    :catchall_0
    move-exception v7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_2
    throw v7

    :catch_3
    move-exception v8

    goto :goto_2

    .end local v2           #destinationPath:Ljava/lang/String;
    .local v3, e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method private initialize(Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .parameter "expStyle"
    .parameter "buttonStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setScrollContainer(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setBackgroundColor(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setVerticalScrollBarEnabled(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setHorizontalScrollBarEnabled(Z)V

    .line 106
    new-instance v0, Lcom/mopub/mobileads/MraidView$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MraidView$1;-><init>(Lcom/mopub/mobileads/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 122
    new-instance v0, Lcom/mopub/mobileads/MraidBrowserController;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/MraidBrowserController;-><init>(Lcom/mopub/mobileads/MraidView;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MraidView;->mBrowserController:Lcom/mopub/mobileads/MraidBrowserController;

    .line 123
    new-instance v0, Lcom/mopub/mobileads/MraidDisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MraidDisplayController;-><init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MraidView;->mDisplayController:Lcom/mopub/mobileads/MraidDisplayController;

    .line 125
    new-instance v0, Lcom/mopub/mobileads/MraidView$MraidWebViewClient;

    invoke-direct {v0, p0, v2}, Lcom/mopub/mobileads/MraidView$MraidWebViewClient;-><init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 126
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance v0, Lcom/mopub/mobileads/MraidView$MraidWebChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/mopub/mobileads/MraidView$MraidWebChromeClient;-><init>(Lcom/mopub/mobileads/MraidView;Lcom/mopub/mobileads/MraidView$1;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    new-instance v0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    invoke-direct {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    .line 132
    return-void
.end method

.method private notifyOnFailureListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$200(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$200(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnFailureListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MraidView$OnFailureListener;->onFailure(Lcom/mopub/mobileads/MraidView;)V

    .line 188
    :cond_0
    return-void
.end method

.method private tryCommand(Ljava/net/URI;)Z
    .locals 8
    .parameter "uri"

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, commandType:Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-static {p1, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v5, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 288
    .local v4, pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 291
    .end local v4           #pair:Lorg/apache/http/NameValuePair;
    :cond_0
    invoke-static {v1, v5, p0}, Lcom/mopub/mobileads/MraidCommandRegistry;->createCommand(Ljava/lang/String;Ljava/util/Map;Lcom/mopub/mobileads/MraidView;)Lcom/mopub/mobileads/MraidCommand;

    move-result-object v0

    .line 292
    .local v0, command:Lcom/mopub/mobileads/MraidCommand;
    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    .line 294
    const/4 v6, 0x0

    .line 298
    :goto_1
    return v6

    .line 296
    :cond_1
    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidCommand;->execute()V

    .line 297
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    .line 298
    const/4 v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mDisplayController:Lcom/mopub/mobileads/MraidDisplayController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidDisplayController;->destroy()V

    .line 136
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 137
    return-void
.end method

.method protected fireChangeEventForProperties(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/MraidProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mopub/mobileads/MraidProperty;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, props:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, json:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 268
    const-string v2, "MraidView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fire changes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected fireChangeEventForProperty(Lcom/mopub/mobileads/MraidProperty;)V
    .locals 4
    .parameter "property"

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/mobileads/MraidProperty;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, json:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 259
    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fire change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method protected fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "message"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.fireErrorEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected fireNativeCommandCompleteEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected fireReadyEvent()V
    .locals 1

    .prologue
    .line 276
    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected getBrowserController()Lcom/mopub/mobileads/MraidBrowserController;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mBrowserController:Lcom/mopub/mobileads/MraidBrowserController;

    return-object v0
.end method

.method protected getDisplayController()Lcom/mopub/mobileads/MraidDisplayController;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mDisplayController:Lcom/mopub/mobileads/MraidDisplayController;

    return-object v0
.end method

.method public getOnCloseButtonStateChangeListener()Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$600(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnCloseListener()Lcom/mopub/mobileads/MraidView$OnCloseListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/mopub/mobileads/MraidView$OnCloseListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$400(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnCloseListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnExpandListener()Lcom/mopub/mobileads/MraidView$OnExpandListener;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/mopub/mobileads/MraidView$OnExpandListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$300(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnExpandListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnFailureListener()Lcom/mopub/mobileads/MraidView$OnFailureListener;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$200(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnFailureListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnOpenListener()Lcom/mopub/mobileads/MraidView$OnOpenListener;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/mopub/mobileads/MraidView$OnOpenListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$700(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnOpenListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnReadyListener()Lcom/mopub/mobileads/MraidView$OnReadyListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #getter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/mopub/mobileads/MraidView$OnReadyListener;
    invoke-static {v0}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$500(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnReadyListener;

    move-result-object v0

    return-object v0
.end method

.method protected injectJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public loadHtmlData(Ljava/lang/String;)V
    .locals 7
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 141
    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<html><head></head><body style=\'margin:0;padding:0;\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/mopub/mobileads/R$raw;->mraid:I

    const-string v3, "mraid.js"

    invoke-direct {p0, v2, v3}, Lcom/mopub/mobileads/MraidView;->copyRawResourceToFilesDir(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, mraid:Ljava/lang/String;
    const-string v0, "<head>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<head><script src=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 150
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 12
    .parameter "url"

    .prologue
    .line 154
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 155
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v7, out:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 160
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 162
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 164
    .local v5, is:Ljava/io/InputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 165
    .local v0, b:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, n:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 166
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 169
    .end local v0           #b:[B
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #n:I
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "MoPub"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mraid loadUrl failed (IllegalArgumentException): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidView;->notifyOnFailureListener()V

    .line 182
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    return-void

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidView;->notifyOnFailureListener()V

    goto :goto_1

    .line 176
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 177
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidView;->notifyOnFailureListener()V

    goto :goto_1

    .line 181
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOnCloseButtonStateChange(Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$602(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;)Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    .line 236
    return-void
.end method

.method public setOnCloseListener(Lcom/mopub/mobileads/MraidView$OnCloseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/mopub/mobileads/MraidView$OnCloseListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$402(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnCloseListener;)Lcom/mopub/mobileads/MraidView$OnCloseListener;

    .line 212
    return-void
.end method

.method public setOnExpandListener(Lcom/mopub/mobileads/MraidView$OnExpandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/mopub/mobileads/MraidView$OnExpandListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$302(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnExpandListener;)Lcom/mopub/mobileads/MraidView$OnExpandListener;

    .line 204
    return-void
.end method

.method public setOnFailureListener(Lcom/mopub/mobileads/MraidView$OnFailureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$202(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnFailureListener;)Lcom/mopub/mobileads/MraidView$OnFailureListener;

    .line 228
    return-void
.end method

.method public setOnOpenListener(Lcom/mopub/mobileads/MraidView$OnOpenListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/mopub/mobileads/MraidView$OnOpenListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$702(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnOpenListener;)Lcom/mopub/mobileads/MraidView$OnOpenListener;

    .line 244
    return-void
.end method

.method public setOnReadyListener(Lcom/mopub/mobileads/MraidView$OnReadyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView;->mListenerInfo:Lcom/mopub/mobileads/MraidView$MraidListenerInfo;

    #setter for: Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/mopub/mobileads/MraidView$OnReadyListener;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->access$502(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnReadyListener;)Lcom/mopub/mobileads/MraidView$OnReadyListener;

    .line 220
    return-void
.end method
