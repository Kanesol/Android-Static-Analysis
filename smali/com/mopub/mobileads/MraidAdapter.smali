.class public Lcom/mopub/mobileads/MraidAdapter;
.super Lcom/mopub/mobileads/BaseAdapter;
.source "MraidAdapter.java"


# instance fields
.field private mMraidView:Lcom/mopub/mobileads/MraidView;

.field private mPreviousAutorefreshSetting:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MraidAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MraidAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mopub/mobileads/MraidAdapter;->mPreviousAutorefreshSetting:Z

    return p1
.end method

.method private initMraidListeners()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidAdapter$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidAdapter$1;-><init>(Lcom/mopub/mobileads/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setOnReadyListener(Lcom/mopub/mobileads/MraidView$OnReadyListener;)V

    .line 83
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidAdapter$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidAdapter$2;-><init>(Lcom/mopub/mobileads/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setOnExpandListener(Lcom/mopub/mobileads/MraidView$OnExpandListener;)V

    .line 94
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidAdapter$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidAdapter$3;-><init>(Lcom/mopub/mobileads/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setOnCloseListener(Lcom/mopub/mobileads/MraidView$OnCloseListener;)V

    .line 103
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    new-instance v1, Lcom/mopub/mobileads/MraidAdapter$4;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MraidAdapter$4;-><init>(Lcom/mopub/mobileads/MraidAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidView;->setOnFailureListener(Lcom/mopub/mobileads/MraidView$OnFailureListener;)V

    .line 108
    return-void
.end method


# virtual methods
.method public init(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "jsonParams"

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/mopub/mobileads/BaseAdapter;->init(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mPreviousAutorefreshSetting:Z

    .line 48
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->destroy()V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 71
    return-void
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 52
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidAdapter;->isInvalidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/MraidView;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    .line 55
    iget-object v1, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidAdapter;->mJsonParams:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidAdapter;->initMraidListeners()V

    .line 58
    iget-object v1, p0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    iget-object v1, p0, Lcom/mopub/mobileads/MraidAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/mopub/mobileads/MraidAdapter;->mMraidView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
