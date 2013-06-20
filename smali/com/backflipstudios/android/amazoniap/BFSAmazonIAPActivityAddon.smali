.class public Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;
.super Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
.source "BFSAmazonIAPActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "bfamazoniap"

.field public static final NAME:Ljava/lang/String; = "AmazonIAPActivityAddon"


# instance fields
.field private m_productInfoRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_products:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/inapp/purchasing/Item;",
            ">;"
        }
    .end annotation
.end field

.field private m_requestMap:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "gameid"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    iput-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_products:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->recordPurchase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseSuccessfulForProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->purchaseFailedForProduct(Ljava/lang/String;)V

    return-void
.end method

.method private requestProductInformation()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateItemDataRequest(Ljava/util/Set;)Ljava/lang/String;

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public canPurchase()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v1, "com.amazon.venezia"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/util/BFSApplicationUtilities;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v1, "com.amazon.mas.test"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/util/BFSApplicationUtilities;->isApplicationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "AmazonIAPActivityAddon"

    return-object v0
.end method

.method public getPriceForProduct(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "productId"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_products:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_products:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Item;

    .line 219
    .local v0, item:Lcom/amazon/inapp/purchasing/Item;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 223
    .end local v0           #item:Lcom/amazon/inapp/purchasing/Item;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onCreate()V

    .line 64
    new-instance v0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;

    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon$AmazonObserver;-><init>(Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->registerObserver(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onResume()V

    .line 79
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->onStart()V

    .line 72
    invoke-direct {p0}, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->requestProductInformation()V

    .line 73
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public purchaseProductWithId(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "productId"
    .parameter "isNonConsumableProduct"

    .prologue
    .line 174
    const-string v1, "bfamazoniap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFSAmazonIAPActivityAddon: Attempting to purchase product: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "PURCHASE_REQUEST"

    invoke-static {v1}, Lcom/backflipstudios/android/analytics/BFSAnalytics;->newEvent(Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v1

    const-string v2, "PRODUCT_ID"

    invoke-virtual {v1, v2, p1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/backflipstudios/android/analytics/BFSAnalyticsEvent;->send()V

    .line 178
    invoke-static {p1}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, requestId:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_requestMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerProductIds([Ljava/lang/String;)V
    .locals 7
    .parameter "productIds"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 201
    :cond_0
    const-string v5, "bfamazoniap"

    const-string v6, "BFSAmazonIAPActivityAddon: Products ID Registration with null or empty array"

    invoke-static {v5, v6}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 207
    .local v3, productInfoRequest:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 208
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    iput-object v3, p0, Lcom/backflipstudios/android/amazoniap/BFSAmazonIAPActivityAddon;->m_productInfoRequest:Ljava/util/Set;

    goto :goto_0
.end method
