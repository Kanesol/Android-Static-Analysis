.class Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "HTML5AdView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/HTML5AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTML5WebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/HTML5AdView;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/HTML5AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/HTML5AdView;Lcom/mopub/mobileads/HTML5AdView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;-><init>(Lcom/mopub/mobileads/HTML5AdView;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mDefaultVideoPoster:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$400(Lcom/mopub/mobileads/HTML5AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/HTML5AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mopub/mobileads/R$drawable;->default_video_poster:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/mopub/mobileads/HTML5AdView;->mDefaultVideoPoster:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/mopub/mobileads/HTML5AdView;->access$402(Lcom/mopub/mobileads/HTML5AdView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mDefaultVideoPoster:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$400(Lcom/mopub/mobileads/HTML5AdView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mVideoProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/mopub/mobileads/HTML5AdView;->access$500(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/HTML5AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 101
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    sget v2, Lcom/mopub/mobileads/R$layout;->video_loading_progress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #setter for: Lcom/mopub/mobileads/HTML5AdView;->mVideoProgressView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/mopub/mobileads/HTML5AdView;->access$502(Lcom/mopub/mobileads/HTML5AdView;Landroid/view/View;)Landroid/view/View;

    .line 103
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mVideoProgressView:Landroid/view/View;
    invoke-static {v1}, Lcom/mopub/mobileads/HTML5AdView;->access$500(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$300(Lcom/mopub/mobileads/HTML5AdView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 116
    const-string v0, "MoPub"

    const-string v1, "Video completed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 108
    const-string v0, "MoPub"

    const-string v1, "Video errored!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$100(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$100(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v1}, Lcom/mopub/mobileads/HTML5AdView;->access$100(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    const/4 v1, 0x0

    #setter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/mopub/mobileads/HTML5AdView;->access$102(Lcom/mopub/mobileads/HTML5AdView;Landroid/view/View;)Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$300(Lcom/mopub/mobileads/HTML5AdView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    iget-object v0, v0, Lcom/mopub/mobileads/HTML5AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HTML5AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 52
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HTML5AdView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$100(Lcom/mopub/mobileads/HTML5AdView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/HTML5AdView;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #setter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/mopub/mobileads/HTML5AdView;->access$102(Lcom/mopub/mobileads/HTML5AdView;Landroid/view/View;)Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #setter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;
    invoke-static {v0, p2}, Lcom/mopub/mobileads/HTML5AdView;->access$302(Lcom/mopub/mobileads/HTML5AdView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 65
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    iget-object v0, v0, Lcom/mopub/mobileads/HTML5AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/HTML5AdView$HTML5WebChromeClient;->this$0:Lcom/mopub/mobileads/HTML5AdView;

    #getter for: Lcom/mopub/mobileads/HTML5AdView;->mCustomViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mopub/mobileads/HTML5AdView;->access$200(Lcom/mopub/mobileads/HTML5AdView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method
