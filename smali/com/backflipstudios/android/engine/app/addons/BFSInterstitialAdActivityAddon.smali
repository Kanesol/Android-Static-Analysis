.class public abstract Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSInterstitialAdActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_INTERSTITIAL_AD_DID_SHOW:Ljava/lang/String; = "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

.field public static final NOTIFICATION_INTERSTITIAL_AD_WILL_NOT_SHOW:Ljava/lang/String; = "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

.field public static final NOTIFICATION_INTERSTITIAL_AD_WILL_SHOW:Ljava/lang/String; = "a87700e11490082991a3205dcda97151d5e0d9fe"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected fireAdDidShow(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 31
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "ec3ca73d41b1a05c47193ea0ff646fbb26d1761e"

    invoke-virtual {v0, v1, p1}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method protected fireAdWillNotShow(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 41
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "d6de37f920ccbf0ab8b5bfc459e3055ed93747e0"

    invoke-virtual {v0, v1, p1}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected fireAdWillShow(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 36
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "a87700e11490082991a3205dcda97151d5e0d9fe"

    invoke-virtual {v0, v1, p1}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public abstract isAdRegisteredWithTag(Ljava/lang/String;)Z
.end method

.method public abstract isAdWithTagPrecached(Ljava/lang/String;)Z
.end method

.method public abstract isPrecachingEnabled()Z
.end method

.method public abstract prepareAdWithTag(Ljava/lang/String;)V
.end method

.method public abstract registerAd(Ljava/lang/String;Ljava/lang/String;Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;)V
.end method

.method public abstract showAdWithTag(Ljava/lang/String;)Z
.end method
