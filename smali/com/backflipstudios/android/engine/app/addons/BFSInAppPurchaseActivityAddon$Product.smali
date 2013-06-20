.class Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;
.super Ljava/lang/Object;
.source "BFSInAppPurchaseActivityAddon.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Product"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5dd178ef0b0ecbd4L


# instance fields
.field public m_count:I

.field public m_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "count"

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 383
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    .line 384
    iput p2, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_count:I

    .line 385
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 390
    instance-of v0, p1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    if-eqz v0, :cond_0

    .line 391
    check-cast p1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;

    .end local p1
    iget-object v0, p1, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/addons/BFSInAppPurchaseActivityAddon$Product;->m_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 393
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
