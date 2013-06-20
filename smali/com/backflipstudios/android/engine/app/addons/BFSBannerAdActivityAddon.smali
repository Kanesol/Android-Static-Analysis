.class public abstract Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSBannerAdActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public abstract hideAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract hideBannerAds()V
.end method

.method public abstract isAdRegisteredWithTag(Ljava/lang/String;)Z
.end method

.method public abstract pauseAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract prepareAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;)V
.end method

.method public abstract resumeAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract setRefreshRate(I)V
.end method

.method public abstract showAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract showAdWithTagDelayed(Ljava/lang/String;J)V
.end method
