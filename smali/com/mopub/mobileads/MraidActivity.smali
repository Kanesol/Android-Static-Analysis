.class public Lcom/mopub/mobileads/MraidActivity;
.super Lcom/mopub/mobileads/BaseActivity;
.source "MraidActivity.java"


# instance fields
.field private mAdView:Lcom/mopub/mobileads/MraidView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 5

    .prologue
    .line 15
    new-instance v1, Lcom/mopub/mobileads/MraidView;

    sget-object v2, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v3, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v4, Lcom/mopub/mobileads/MraidView$PlacementType;->INTERSTITIAL:Lcom/mopub/mobileads/MraidView$PlacementType;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mopub/mobileads/MraidView;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/MraidView$ExpansionStyle;Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;Lcom/mopub/mobileads/MraidView$PlacementType;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    .line 18
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$1;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->setOnReadyListener(Lcom/mopub/mobileads/MraidView$OnReadyListener;)V

    .line 24
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$2;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->setOnCloseButtonStateChange(Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;)V

    .line 31
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    new-instance v2, Lcom/mopub/mobileads/MraidActivity$3;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidActivity$3;-><init>(Lcom/mopub/mobileads/MraidActivity;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidView;->setOnCloseListener(Lcom/mopub/mobileads/MraidView$OnCloseListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.mopub.mobileads.Source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, source:Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mopub/mobileads/MraidActivity;->mAdView:Lcom/mopub/mobileads/MraidView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidView;->destroy()V

    .line 46
    invoke-super {p0}, Lcom/mopub/mobileads/BaseActivity;->onDestroy()V

    .line 47
    return-void
.end method
