.class public Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;
.super Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;
.source "BFSMoPubInterstitialAdAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$CancelTask;,
        Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSMoPubInterstitialAdAddon"

.field private static m_adShown:Ljava/lang/String;


# instance fields
.field private m_interstitials:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;",
            ">;"
        }
    .end annotation
.end field

.field private m_precachingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "usePrecaching"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_precachingEnabled:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    .line 32
    iput-boolean p2, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_precachingEnabled:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdWillNotShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->showingAdWithTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdWillNotShow(Ljava/lang/String;)V

    return-void
.end method

.method private showingAdWithTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 181
    sput-object p1, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    .line 182
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdWillShow(Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "BFSMoPubInterstitialAdAddon"

    return-object v0
.end method

.method public isAdRegisteredWithTag(Ljava/lang/String;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 173
    .local v0, adPackage:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    if-eqz v0, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdWithTagPrecached(Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"

    .prologue
    .line 147
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 148
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 149
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->isReady()Z

    move-result v3

    .line 153
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isPrecachingEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_precachingEnabled:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 94
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 83
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 84
    .local v2, interstitials:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 85
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->destroy()V

    goto :goto_0

    .line 88
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    :cond_0
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 89
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 54
    sget-object v3, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 55
    sget-object v3, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->fireAdDidShow(Ljava/lang/String;)V

    .line 57
    iget-boolean v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_precachingEnabled:Z

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 59
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;>;"
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

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 60
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->getTag()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->load()V

    goto :goto_0

    .line 66
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    .end local v1           #banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v3, ""

    sput-object v3, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_adShown:Ljava/lang/String;

    .line 68
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public prepareAdWithTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 133
    .local v0, adPackage:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    if-eqz v0, :cond_1

    .line 134
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubInterstitialAdAddon: Preparing interstitial ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->prepare(Landroid/app/Activity;)V

    .line 136
    iget-boolean v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_precachingEnabled:Z

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->load()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubInterstitialAdAddon: Unable to find ad to prepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;)V
    .locals 4
    .parameter "tag"
    .parameter "adId"
    .parameter "type"

    .prologue
    .line 117
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubInterstitialAdAddon: Attempting to register ad with no adId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v1, "bfs_mopub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSMoPubInterstitialAdAddon: Registering interstitial ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;-><init>(Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v0, adPackage:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    iget-object v1, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public showAdWithTag(Ljava/lang/String;)Z
    .locals 6
    .parameter "tag"

    .prologue
    .line 159
    iget-object v3, p0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon;->m_interstitials:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 160
    .local v1, banner_ads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;>;"
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

    check-cast v0, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;

    .line 161
    .local v0, ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "bfs_mopub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BFSMoPubInterstitialAdAddon: Showing precached interstitial for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;->show()V

    goto :goto_0

    .line 166
    .end local v0           #ad:Lcom/backflipstudios/android/mopub/BFSMoPubInterstitialAdAddon$AdPackage;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
