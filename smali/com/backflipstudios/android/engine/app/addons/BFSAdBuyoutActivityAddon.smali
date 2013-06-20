.class public Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSAdBuyoutActivityAddon.java"

# interfaces
.implements Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;


# static fields
.field private static final ADS_DISABLED_KEY:Ljava/lang/String; = "__c178"

.field public static final NAME:Ljava/lang/String; = "BFSAdBuyoutActivityAddon"

.field public static final NOTIFICATION_AD_BUYOUT_FAILED:Ljava/lang/String; = "d0d76afedfafe86b6fe0edc435634ba567d4a44f"

.field public static final NOTIFICATION_AD_BUYOUT_SUCCESSFUL:Ljava/lang/String; = "0f5f96c6945cc7f7157e49e5ed25e4fe5a612011"

.field private static m_productId:Ljava/lang/String;


# instance fields
.field private m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    .line 29
    return-void
.end method

.method private disableAds()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_activity:Landroid/app/Activity;

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivity;

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/BFSActivity;->unregisterAddonsWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)V

    .line 119
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_activity:Landroid/app/Activity;

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivity;

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0, v1}, Lcom/backflipstudios/android/engine/app/BFSActivity;->unregisterAddonsWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)V

    .line 121
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v1, "__c178"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    invoke-virtual {v0}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->flush()V

    .line 123
    return-void
.end method


# virtual methods
.method public areAdsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v3, "__c178"

    invoke-virtual {v2, v3}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    .local v0, value:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 85
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doAdBuyout(Ljava/lang/String;)Z
    .locals 5
    .parameter "productId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const-string v1, "bfsplatform"

    const-string v4, "BFSAdBuyoutActivityAddon: Ad buyout"

    invoke-static {v1, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_activity:Landroid/app/Activity;

    check-cast v1, Lcom/backflipstudios/android/engine/app/BFSActivity;

    sget-object v4, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v1, v4}, Lcom/backflipstudios/android/engine/app/BFSActivity;->getFirstAddonWithType(Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;

    .line 98
    .local v0, purchaseAddon:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
    if-nez v0, :cond_0

    .line 99
    const-string v1, "bfsplatform"

    const-string v3, "BFSAdBuyoutActivityAddon.doAdBuyout(): Unable to find In-App purchase addon to complete ad buyout."

    invoke-static {v1, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 113
    :goto_0
    return v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->canPurchase()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->showPurchasingUnavailableErrorDialog()V

    move v1, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0, p1, v3}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->purchaseProductWithId(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    sput-object p1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    move v1, v3

    .line 113
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "BFSAdBuyoutActivityAddon"

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v2, "__a14"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_dataStore:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    .line 48
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "4ca44b0a78a84fb26c4543a81e7606dba6e5710b"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 49
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "03e50f29ce5e6f2bcb931e96235b6d1e66691cee"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 50
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    const-string v1, "3ad59fe3375207a7420b71086909b94735dabe91"

    invoke-virtual {v0, v1, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->subscribe(Ljava/lang/String;Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->unsubscribe(Lcom/backflipstudios/android/engine/app/notification/BFSNotificationSubscriber;)V

    .line 77
    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "eventName"
    .parameter "obj0"
    .parameter "obj2"

    .prologue
    .line 131
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, productId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "4ca44b0a78a84fb26c4543a81e7606dba6e5710b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string v1, "bfsplatform"

    const-string v2, "BFSAdBuyoutActivityAddon: Ad buyout failed"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v1

    const-string v2, "d0d76afedfafe86b6fe0edc435634ba567d4a44f"

    invoke-virtual {v1, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;)V

    .line 153
    :cond_2
    :goto_1
    const-string v1, ""

    sput-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->m_productId:Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_3
    const-string v1, "03e50f29ce5e6f2bcb931e96235b6d1e66691cee"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string v1, "bfsplatform"

    const-string v2, "BFSAdBuyoutActivityAddon: Ad buyout successful"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->disableAds()V

    .line 147
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v1

    const-string v2, "0f5f96c6945cc7f7157e49e5ed25e4fe5a612011"

    invoke-virtual {v1, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_4
    const-string v1, "3ad59fe3375207a7420b71086909b94735dabe91"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string v1, "bfsplatform"

    const-string v2, "BFSAdBuyoutActivityAddon: Ad buyout failed (unavailable)"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->getInstance()Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;

    move-result-object v1

    const-string v2, "d0d76afedfafe86b6fe0edc435634ba567d4a44f"

    invoke-virtual {v1, v2}, Lcom/backflipstudios/android/engine/app/notification/BFSNotificationCenter;->publish(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public restoreAdBuyout()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSAdBuyoutActivityAddon;->disableAds()V

    .line 91
    return-void
.end method
