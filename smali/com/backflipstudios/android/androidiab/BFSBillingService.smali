.class public abstract Lcom/backflipstudios/android/androidiab/BFSBillingService;
.super Landroid/app/Service;
.source "BFSBillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;,
        Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;
    }
.end annotation


# static fields
.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# instance fields
.field private mBase64EncodedPublicKey:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mSentRequests:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$LocalBinder;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mBinder:Landroid/os/IBinder;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mBase64EncodedPublicKey:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/androidiab/BFSBillingService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/vending/billing/IMarketBillingService;)Lcom/android/vending/billing/IMarketBillingService;
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-object p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 165
    :try_start_0
    const-string v3, "android_iab"

    const-string v4, "BFSBillingService: Binding to Market billing service"

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v3, p0, v4}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 169
    .local v0, bindResult:Z
    if-eqz v0, :cond_0

    .line 177
    .end local v0           #bindResult:Z
    :goto_0
    return v2

    .line 172
    .restart local v0       #bindResult:Z
    :cond_0
    const-string v2, "android_iab"

    const-string v3, "BFSBillingService: Could not bind to service."

    invoke-static {v2, v3}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0           #bindResult:Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "android_iab"

    const-string v3, "BFSBillingService.bindToMarketBillingService()"

    invoke-static {v2, v3, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
    .locals 3
    .parameter "requestId"
    .parameter "responseCode"

    .prologue
    .line 293
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;

    .line 294
    .local v0, request:Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p3}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->responseCodeReceived(Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    .line 297
    :cond_0
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 229
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 247
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "startId"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mBase64EncodedPublicKey:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 262
    .local v10, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;>;"
    if-nez v10, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v9, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;

    .line 268
    .local v11, vp:Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;
    iget-object v0, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    iget-object v1, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->purchaseState:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    iget-object v2, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->productId:Ljava/lang/String;

    iget-object v3, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v11, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/backflipstudios/android/androidiab/BFSResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v11           #vp:Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 275
    .local v8, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 306
    const/4 v0, -0x1

    .line 308
    .local v0, maxStartId:I
    :cond_0
    :goto_0
    sget-object v2, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;

    .local v1, request:Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;
    if-eqz v1, :cond_3

    .line 309
    invoke-virtual {v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    sget-object v2, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 315
    invoke-virtual {v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 316
    invoke-virtual {v1}, Lcom/backflipstudios/android/androidiab/BFSBillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->bindToMarketBillingService()Z

    .line 332
    :cond_2
    :goto_1
    return-void

    .line 329
    :cond_3
    if-ltz v0, :cond_2

    .line 330
    invoke-virtual {p0, v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 12
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 131
    const-string v9, "android_iab"

    const-string v10, "BFSBillingService.handleCommand(): Intent is null"

    invoke-static {v9, v10}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    const-string v9, "android_iab"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BFSBillingService.handleCommand(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v9, "com.backflipstudios.android.inappbilling.CONFIRM_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 140
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, notifyIds:[Ljava/lang/String;
    invoke-direct {p0, p2, v2}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 142
    .end local v2           #notifyIds:[Ljava/lang/String;
    :cond_2
    const-string v9, "com.backflipstudios.android.inappbilling.GET_PURCHASE_INFORMATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    const-string v9, "notification_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, notifyId:Ljava/lang/String;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {p0, p2, v9}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 145
    .end local v1           #notifyId:Ljava/lang/String;
    :cond_3
    const-string v9, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    const-string v9, "inapp_signed_data"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, signedData:Ljava/lang/String;
    const-string v9, "inapp_signature"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, signature:Ljava/lang/String;
    invoke-direct {p0, p2, v8, v7}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v7           #signature:Ljava/lang/String;
    .end local v8           #signedData:Ljava/lang/String;
    :cond_4
    const-string v9, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    const-string v9, "request_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 151
    .local v3, requestId:J
    const-string v9, "response_code"

    sget-object v10, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->RESULT_ERROR:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    invoke-virtual {v10}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->ordinal()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 152
    .local v6, responseCodeIndex:I
    invoke-static {v6}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;->valueOf(I)Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;

    move-result-object v5

    .line 153
    .local v5, responseCode:Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;
    invoke-direct {p0, v3, v4, v5}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->checkResponseCode(JLcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 341
    const-string v0, "android_iab"

    const-string v1, "BFSBillingService(): Market billing service connected"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 344
    invoke-direct {p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->runPendingRequests()V

    .line 345
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 353
    const-string v0, "android_iab"

    const-string v1, "BFSBillingService(): Market billing service disconnected"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 356
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 111
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 116
    invoke-virtual {p0, p1, p3}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "productId"
    .parameter "developerPayload"

    .prologue
    .line 202
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;-><init>(Lcom/backflipstudios/android/androidiab/BFSBillingService;)V

    invoke-virtual {v0}, Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .parameter "publicKey"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSBillingService;->mBase64EncodedPublicKey:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 364
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/backflipstudios/android/androidiab/BFSBillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method
