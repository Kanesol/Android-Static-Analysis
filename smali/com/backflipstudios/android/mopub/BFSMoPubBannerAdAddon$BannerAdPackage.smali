.class Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;
.super Ljava/lang/Object;
.source "BFSMoPubBannerAdAddon.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;
.implements Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;
.implements Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;
.implements Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;
.implements Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerAdPackage"
.end annotation


# instance fields
.field private m_adId:Ljava/lang/String;

.field private m_adView:Lcom/mopub/mobileads/MoPubView;

.field private m_isShown:Z

.field private m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private m_position:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

.field private m_tag:Ljava/lang/String;

.field private m_timer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "adId"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 228
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    .line 222
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adId:Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_position:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    .line 224
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    .line 225
    iput-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    .line 230
    iput-object p2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adId:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_position:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    .line 233
    return-void
.end method

.method static synthetic access$400(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->doShow()V

    return-void
.end method

.method private doShow()V
    .locals 3

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    if-nez v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    .line 293
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;

    #getter for: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_layout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->access$200(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 296
    const-string v0, "bfs_mopub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSMoPubBannerAdsAddon: Ad Shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    .line 300
    return-void
.end method


# virtual methods
.method public OnAdClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 369
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubBannerAdsAddon: Ad clicked"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public OnAdClosed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 363
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubBannerAdsAddon: Ad closed"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public OnAdFailed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 357
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubBannerAdsAddon: Ad failed"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public OnAdLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 351
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubBannerAdsAddon: Ad loaded"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public OnAdWillLoad(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;)V
    .locals 3
    .parameter "m"
    .parameter "url"

    .prologue
    .line 345
    const-string v0, "bfs_mopub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSMoPubBannerAdsAddon: Ad will load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->hide()V

    .line 335
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 340
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    .line 309
    :cond_0
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    .line 317
    const-string v0, "bfs_mopub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSMoPubBannerAdsAddon: Ad Hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_2
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_isShown:Z

    return v0
.end method

.method public pauseRotation()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 324
    return-void
.end method

.method public prepare()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 237
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;

    #getter for: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->access$000(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    .line 239
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setId(I)V

    .line 241
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdWillLoadListener(Lcom/mopub/mobileads/MoPubView$OnAdWillLoadListener;)V

    .line 242
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 243
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdFailedListener(Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;)V

    .line 244
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdClosedListener(Lcom/mopub/mobileads/MoPubView$OnAdClosedListener;)V

    .line 245
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->setOnAdClickedListener(Lcom/mopub/mobileads/MoPubView$OnAdClickedListener;)V

    .line 247
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    const-string v1, "m_version:%s,m_versioncode:%d,m_source:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/backflipstudios/android/mopub/BFSMoPubConstants;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/backflipstudios/android/mopub/BFSMoPubConstants;->getApplicationVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/backflipstudios/android/mopub/BFSMoPubConstants;->getInstallerSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 254
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_position:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    if-ne v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->this$0:Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;

    #getter for: Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->m_precachingEnabled:Z
    invoke-static {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;->access$100(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 263
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public resumeRotation()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_adView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 329
    return-void
.end method

.method public show(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 279
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    .line 280
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;

    invoke-direct {v1, p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$ShowBannerTask;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 281
    const-string v0, "bfs_mopub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BFSMoPubBannerAdsAddon: Ad Display Scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->m_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/backflipstudios/android/mopub/BFSMoPubBannerAdAddon$BannerAdPackage;->doShow()V

    goto :goto_0
.end method
