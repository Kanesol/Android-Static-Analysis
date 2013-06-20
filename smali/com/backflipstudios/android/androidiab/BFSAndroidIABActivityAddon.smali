.class public Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;
.super Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
.source "BFSAndroidIABActivityAddon.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSAndroidIABActivityAddon"

.field private static final RESTORE_KEY:Ljava/lang/String; = "__cx42"


# instance fields
.field private mBillingSupported:Z

.field private mPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

.field private mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

.field private m_iabPublicKey:Ljava/lang/String;

.field private m_productPrices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_serviceClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "activity"
    .parameter "gameid"
    .parameter "iabPublicKey"
    .parameter "serviceClass"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    .line 45
    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 46
    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_iabPublicKey:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_serviceClass:Ljava/lang/Class;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mBillingSupported:Z

    .line 56
    iput-object p4, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_serviceClass:Ljava/lang/Class;

    .line 57
    iput-object p3, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_iabPublicKey:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mBillingSupported:Z

    return p1
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->recordPurchase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->purchaseFailedForProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->setIntProperty(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public canPurchase()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->checkBillingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-boolean v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mBillingSupported:Z

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "BFSAndroidIABActivityAddon"

    return-object v0
.end method

.method public getPriceForProduct(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "productId"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_productPrices:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_productPrices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_productPrices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 115
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onCreate()V

    .line 71
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;

    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon$PurchaseObserver;-><init>(Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->unbind()V

    .line 107
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 110
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onResume()V

    .line 100
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 260
    const-string v2, "android_iab"

    const-string v3, "BFSAndroidIABActivityAddon: Connected to billing service."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 262
    check-cast v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;

    .line 263
    .local v0, binder:Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;
    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;->getService()Lcom/backflipstudios/android/androidiab/BFSBillingService;

    move-result-object v2

    iput-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 264
    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    iget-object v3, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_iabPublicKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->setPublicKey(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->canPurchase()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    const-string v2, "android_iab"

    const-string v3, "BFSAndroidIABActivityAddon: Purchasing is available."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    if-eqz v2, :cond_2

    .line 274
    const-string v2, "__cx42"

    invoke-virtual {p0, v2}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->getIntProperty(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    .local v1, restored:Ljava/lang/Integer;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 276
    :cond_1
    const-string v2, "android_iab"

    const-string v3, "BFSAndroidIABActivityAddon: Attempting to restore managed purchases."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    invoke-virtual {v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->restoreTransactions()Z

    .line 280
    .end local v1           #restored:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 285
    const-string v0, "android_iab"

    const-string v1, "BFSAndroidIABActivityAddon: Disconnected billing service."

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    .line 288
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onStart()V

    .line 79
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-static {v1}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->register(Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_serviceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 83
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mPurchaseObserver:Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;

    invoke-static {v0}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->unregister(Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;)V

    .line 89
    return-void
.end method

.method public purchaseProductWithId(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "productId"
    .parameter "isNonConsumableProduct"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    const-string v2, "android_iab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BFSAndroidIABActivityAddon: Purchasing product: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "PURCHASE_REQUEST"

    invoke-static {v2}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v2

    const-string v3, "PRODUCT_ID"

    invoke-virtual {v2, v3, p1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 208
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->getPurchaseCountForProduct(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 209
    const-string v1, "android_iab"

    const-string v2, "BFSAndroidIABActivityAddon: Managed product already purchased"

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    if-nez v2, :cond_2

    move v0, v1

    .line 215
    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->mService:Lcom/backflipstudios/android/androidiab/BFSBillingService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public registerProductIds([Ljava/lang/String;)V
    .locals 0
    .parameter "productIds"

    .prologue
    .line 229
    return-void
.end method

.method public registerProductPrices(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, prices:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSAndroidIABActivityAddon;->m_productPrices:Ljava/util/HashMap;

    .line 245
    return-void
.end method
