.class public Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;
.super Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
.source "BFSMoPubBannerAdAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;,
        Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSMoPubBannerAdAddon"


# instance fields
.field private m_bannerAds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;",
            ">;"
        }
    .end annotation
.end field

.field private m_layout:Landroid/widget/RelativeLayout;

.field private m_precachingEnabled:Z

.field private m_shouldBeShownArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Z)V
    .locals 2
    .parameter "activity"
    .parameter "layout"
    .parameter "usePrecaching"

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 26
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    .line 27
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_layout:Landroid/widget/RelativeLayout;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_precachingEnabled:Z

    .line 29
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_layout:Landroid/widget/RelativeLayout;

    .line 38
    iput-boolean p3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_precachingEnabled:Z

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_precachingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "BFSMoPubBannerAdAddon"

    return-object v0
.end method

.method public hideAdWithTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 168
    .local v0, toHide:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->hide()V

    .line 171
    :cond_0
    return-void
.end method

.method public hideBannerAds()V
    .locals 4

    .prologue
    .line 176
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 177
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 178
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->hide()V

    goto :goto_0

    .line 182
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    :cond_1
    return-void
.end method

.method public isAdRegisteredWithTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 212
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    if-eqz v0, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 101
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 88
    const-string v3, "bfs_mopub"

    const-string v4, "BFSMoPubBannerAdsAddon.onDestroy()"

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 91
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 92
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->destroy()V

    goto :goto_0

    .line 95
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    :cond_0
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 71
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 72
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 73
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->hide()V

    goto :goto_0

    .line 78
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 60
    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

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

    .line 62
    .local v1, tag:Ljava/lang/String;
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->showAdWithTagDelayed(Ljava/lang/String;J)V

    goto :goto_0

    .line 64
    .end local v1           #tag:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_shouldBeShownArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public pauseAdWithTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 188
    .local v0, toHide:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->pauseRotation()V

    .line 191
    :cond_0
    return-void
.end method

.method public prepareAdWithTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 133
    .local v0, adPackage:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    if-eqz v0, :cond_0

    .line 134
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubBannerAdsAddon: Preparing Banner Ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->prepare()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubBannerAdsAddon: Unable to find ad to prepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V
    .locals 4
    .parameter "tag"
    .parameter "adId"
    .parameter "position"

    .prologue
    .line 118
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubBannerAdsAddon: Attempting to register ad with no adId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubBannerAdsAddon: Registering Banner Ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V

    .line 126
    .local v0, adPackage:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAdWithTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 197
    .local v0, toHide:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->resumeRotation()V

    .line 200
    :cond_0
    return-void
.end method

.method public setRefreshRate(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 206
    return-void
.end method

.method public showAdWithTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->showAdWithTagDelayed(Ljava/lang/String;J)V

    .line 145
    return-void
.end method

.method public showAdWithTagDelayed(Ljava/lang/String;J)V
    .locals 4
    .parameter "tag"
    .parameter "delayMillis"

    .prologue
    .line 150
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_bannerAds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 151
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;

    .line 152
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-virtual {v0, p2, p3}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->show(J)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->hide()V

    goto :goto_0

    .line 162
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
    :cond_2
    return-void
.end method
