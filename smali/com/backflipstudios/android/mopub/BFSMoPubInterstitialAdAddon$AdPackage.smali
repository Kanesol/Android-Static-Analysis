.class Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
.super Ljava/lang/Object;
.source "BFSMoPubInterstitialAdAddon.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdPackage"
.end annotation


# instance fields
.field private m_adId:Ljava/lang/String;

.field private m_consecutiveLoadFailures:I

.field private m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

.field private m_precaching:Z

.field private m_tag:Ljava/lang/String;

.field private m_timer:Ljava/util/Timer;

.field private m_type:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

.field private m_waiting:Z


# direct methods
.method public constructor <init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "addon"
    .parameter "type"
    .parameter "tag"
    .parameter "adId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    .line 188
    sget-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->GameplayInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_type:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    .line 189
    iput-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_adId:Ljava/lang/String;

    .line 192
    iput-boolean v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    .line 193
    iput-boolean v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    .line 194
    iput v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_consecutiveLoadFailures:I

    .line 195
    iput-object v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    .line 199
    iput-object p1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    .line 200
    iput-object p2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_type:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    .line 201
    iput-object p3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_adId:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method public OnInterstitialFailed()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubIterstitialAdAdon: Failed to load interstitial ad"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    .line 298
    :cond_0
    iget v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_consecutiveLoadFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_consecutiveLoadFailures:I

    .line 300
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_consecutiveLoadFailures:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    if-eqz v0, :cond_3

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdWillNotShow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->access$200(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V

    .line 307
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    .line 308
    return-void
.end method

.method public OnInterstitialLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    const-string v0, "bfs_mopub"

    const-string v1, "BFSMoPubIterstitialAdAdon: Interstitial ad loaded"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    .line 278
    :cond_0
    iput v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_consecutiveLoadFailures:I

    .line 280
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->showingAdWithTag(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->access$100(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 285
    :cond_2
    iput-boolean v2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    .line 286
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    .line 246
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdWillNotShow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->access$000(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 227
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_type:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    .line 221
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 222
    return-void
.end method

.method public prepare(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 207
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_adId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 209
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setListener(Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;)V

    .line 211
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

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

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_precaching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_owner:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;

    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_tag:Ljava/lang/String;

    #calls: Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->showingAdWithTag(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->access$100(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_waiting:Z

    .line 258
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    .line 259
    iget-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->m_timer:Ljava/util/Timer;

    new-instance v1, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;

    invoke-direct {v1, p0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
