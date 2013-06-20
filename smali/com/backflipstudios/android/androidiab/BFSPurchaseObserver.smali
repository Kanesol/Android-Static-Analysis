.class abstract Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;
.super Ljava/lang/Object;
.source "BFSPurchaseObserver.java"


# static fields
.field private static final START_INTENT_SENDER_SIG:[Ljava/lang/Class;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mStartIntentSender:Ljava/lang/reflect/Method;

.field private mStartIntentSenderArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mActivity:Landroid/app/Activity;

    .line 44
    invoke-direct {p0}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->initCompatibilityLayer()V

    .line 45
    return-void
.end method

.method private initCompatibilityLayer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "startIntentSender"

    sget-object v3, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/SecurityException;
    iput-object v4, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/NoSuchMethodException;
    iput-object v4, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract onBillingSupported(Z)V
.end method

.method public abstract onPurchaseStateChange(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract onRequestPurchaseResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RequestPurchase;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
.end method

.method public abstract onRestoreTransactionsResponse(Lcom/backflipstudios/android/androidiab/BFSBillingService$RestoreTransactions;Lcom/backflipstudios/android/androidiab/BFSIABConsts$ResponseCode;)V
.end method

.method protected postPurchaseStateChange(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "purchaseState"
    .parameter "itemId"
    .parameter "orderId"
    .parameter "purchaseTime"
    .parameter "developerPayload"

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p6}, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->onPurchaseStateChange(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 147
    return-void
.end method

.method protected startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 4
    .parameter "pendingIntent"
    .parameter "intent"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    aput-object v3, v1, v2

    .line 124
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 125
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 126
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 127
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 128
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mStartIntentSenderArgs:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "android_iab"

    const-string v2, "BFSPurchaseObserver.startBuyPageActivity()"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/backflipstudios/android/androidiab/BFSPurchaseObserver;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "android_iab"

    const-string v2, "BFSPurchaseObserver.startBuyPageActivity()"

    invoke-static {v1, v2, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
