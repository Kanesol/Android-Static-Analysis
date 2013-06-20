.class public abstract Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSInAppPurchaseActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;,
        Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;,
        Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_PURCHASE_FAILED:Ljava/lang/String; = "4ca44b0a78a84fb26c4543a81e7606dba6e5710b"

.field public static final NOTIFICATION_PURCHASE_SUCCESSFUL:Ljava/lang/String; = "03e50f29ce5e6f2bcb931e96235b6d1e66691cee"

.field public static final NOTIFICATION_PURCHASE_UNAVAILABLE:Ljava/lang/String; = "3ad59fe3375207a7420b71086909b94735dabe91"

.field public static final NOTIFICATION_RESTORE_PRODUCTS_FAILED:Ljava/lang/String; = "d89d039c8abbd447b96dfa29b8cace8e77acc544"

.field public static final NOTIFICATION_RESTORE_PRODUCTS_SUCCESSFUL:Ljava/lang/String; = "46dbec4afc9d3c9ab902453866cfebed3f49e7fd"

.field private static final PURCHASES_KEY:Ljava/lang/String; = "__d12"

.field private static final PURCHASES_TO_REPORT_KEY:Ljava/lang/String; = "__b06"

.field private static final PURCHASE_FAILED:I = 0x895639

.field private static final PURCHASE_UNAVAILABLE:I = 0x895638

.field private static final RESTORE_FAILED:I = 0x895637

.field private static final RESTORE_SUCCESS:I = 0x895636

.field private static final RESTORING_DIALOG:I = 0x895634

.field private static final USER_ID_DIALOG:I = 0x895635

.field private static final USER_KEY_KEY:Ljava/lang/String; = "__k34"


# instance fields
.field private m_gameid:Ljava/lang/String;

.field private m_lastReportFailed:Z

.field private m_lastRestoreCount:I

.field private m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

.field private m_userid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "gameid"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 42
    iput-boolean v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_userid:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_gameid:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    .line 46
    iput v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastRestoreCount:I

    .line 59
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->getDeviceUniqueIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_userid:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_gameid:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    return-object v0
.end method


# virtual methods
.method public abstract canPurchase()Z
.end method

.method protected getIntProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter "key"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, retVal:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    invoke-virtual {v1, p1}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    monitor-exit v2

    .line 220
    return-object v0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract getPriceForProduct(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getPurchaseCountForProduct(Ljava/lang/String;)I
    .locals 5
    .parameter "productId"

    .prologue
    .line 234
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v4, "__d12"

    invoke-virtual {v3, v4}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 235
    .local v2, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-eqz v2, :cond_1

    .line 236
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 237
    .local v1, product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    iget-object v3, v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    iget v3, v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 242
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v2, "__a13"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    .line 81
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 182
    :goto_0
    return-object v1

    .line 104
    :pswitch_0
    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "Restoring purchases..."

    invoke-static {v2, v3, v4, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 105
    goto :goto_0

    .line 108
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Purchases Restored"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Restored %d purchases.\n\nID: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastRestoreCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v6, "__k34"

    invoke-virtual {v5, v6}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$1;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$1;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 119
    goto :goto_0

    .line 123
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Restore Error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Unable to restore purchases. Please try again later."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$2;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$2;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 134
    goto :goto_0

    .line 138
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Purchase Identifer"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "This is your unique identifier: \n\n%s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v6, "__k34"

    invoke-virtual {v5, v6}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$3;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$3;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 149
    goto/16 :goto_0

    .line 153
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Purchasing Unavailable"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Purchasing is currently unavailable. Please try again later."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$4;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$4;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 164
    goto/16 :goto_0

    .line 168
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "Purchase Error"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Purchase failed. Please try again later."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$5;

    invoke-direct {v4, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$5;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 179
    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x895634
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastReportFailed:Z

    .line 94
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->reportPurchases()V

    .line 96
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->reportPurchases()V

    .line 87
    return-void
.end method

.method protected productRestoreFailed()V
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;

    invoke-direct {v1, p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$10;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method

.method protected productsRestored(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, productIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_lastRestoreCount:I

    .line 280
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;

    invoke-direct {v1, p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$9;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method protected purchaseFailedForProduct(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 247
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$6;

    invoke-direct {v1, p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$6;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public abstract purchaseProductWithId(Ljava/lang/String;Z)Z
.end method

.method protected purchaseSuccessfulForProduct(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 267
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$8;

    invoke-direct {v1, p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$8;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method protected purchaseUnavailableForProduct(Ljava/lang/String;)V
    .locals 2
    .parameter "productId"

    .prologue
    .line 257
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;

    invoke-direct {v1, p0, p1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$7;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method protected recordPurchase(Ljava/lang/String;)V
    .locals 8
    .parameter "productId"

    .prologue
    .line 308
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    monitor-enter v6

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, found:Z
    :try_start_0
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v7, "__d12"

    invoke-virtual {v5, v7}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 312
    .local v3, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-nez v3, :cond_0

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v3       #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 316
    .local v2, product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    iget-object v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    iget v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 318
    const/4 v0, 0x1

    .line 322
    .end local v2           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :cond_2
    if-nez v0, :cond_3

    .line 323
    new-instance v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    const/4 v7, 0x1

    invoke-direct {v5, p1, v7}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_3
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v7, "__d12"

    invoke-virtual {v5, v7, v3}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const/4 v0, 0x0

    .line 329
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v7, "__b06"

    invoke-virtual {v5, v7}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 330
    .local v4, to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-nez v4, :cond_4

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .restart local v4       #to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 334
    .restart local v2       #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    iget-object v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 335
    iget v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 336
    const/4 v0, 0x1

    .line 340
    .end local v2           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :cond_6
    if-nez v0, :cond_7

    .line 341
    new-instance v5, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    const/4 v7, 0x1

    invoke-direct {v5, p1, v7}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_7
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v7, "__b06"

    invoke-virtual {v5, v7, v4}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    invoke-virtual {v5}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->flush()V

    .line 346
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->reportPurchases()V

    .line 349
    return-void

    .line 346
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    .end local v4           #to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public abstract registerProductIds([Ljava/lang/String;)V
.end method

.method protected reportPurchases()V
    .locals 7

    .prologue
    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, paramList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    const-string v6, "__b06"

    invoke-virtual {v5, v6}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 357
    .local v4, to_report:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;>;"
    if-eqz v4, :cond_0

    .line 358
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .line 359
    .local v3, product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "productid"

    iget-object v6, v3, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v5, "productcount"

    iget v6, v3, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v5, "userid"

    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_userid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v5, "gameid"

    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_gameid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #product:Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 370
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;

    invoke-direct {v6, p0, v1}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RecordOperation;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/ArrayList;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 372
    :cond_1
    return-void
.end method

.method public restoreProducts()Z
    .locals 3

    .prologue
    .line 202
    const-string v1, "bfsplatform"

    const-string v2, "BFSInAppPurchaseActivityAddon: Restoring prodcuts."

    invoke-static {v1, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const v2, 0x895634

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "gameid"

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_gameid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "userid"

    iget-object v2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_userid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;

    invoke-direct {v2, p0, v0}, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$RestoreOperation;-><init>(Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 211
    const/4 v1, 0x1

    return v1
.end method

.method protected setIntProperty(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_store:Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;

    invoke-virtual {v0}, Lcom/backflipstudios/android/data/BFSSimpleSecureDataStore;->flush()V

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showPurchaseFailedErrorDialog()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const v1, 0x895639

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 188
    return-void
.end method

.method public showPurchasingUnavailableErrorDialog()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const v1, 0x895638

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 193
    return-void
.end method

.method public showUserIdentifier()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;->m_activity:Landroid/app/Activity;

    const v1, 0x895635

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 198
    return-void
.end method
