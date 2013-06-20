.class public Lcom/mopub/mobileads/HTML5AdView;
.super Lcom/mopub/mobileads/AdView;
.source "HTML5AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/HTML5AdView$1;,
        Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 26
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/HTML5AdView;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/AdView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V

    .line 35
    new-instance v1, Ljava/lang/Integer;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    .local v0, sdkVersion:I
    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 37
    new-instance v1, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;-><init>(Lcom/mopub/mobileads/HTML5AdView;Lcom/mopub/mobileads/HTML5AdView$1;)V

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/HTML5AdView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 40
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 41
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/mopub/mobileads/HTML5AdView;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/HTML5AdView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/HTML5AdView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/HTML5AdView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/mobileads/HTML5AdView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/HTML5AdView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mopub/mobileads/HTML5AdView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/mobileads/HTML5AdView;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mopub/mobileads/HTML5AdView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/mopub/mobileads/HTML5AdView;->mVideoProgressView:Landroid/view/View;

    return-object p1
.end method
