.class public final enum Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
.super Ljava/lang/Enum;
.source "BFSIABConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/androidiab/BFSIABConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

.field public static final enum CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

.field public static final enum PURCHASED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

.field public static final enum REFUNDED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->PURCHASED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    .line 50
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    .line 51
    new-instance v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->REFUNDED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->PURCHASED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->REFUNDED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->$VALUES:[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    .locals 2
    .parameter "index"

    .prologue
    .line 55
    invoke-static {}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->values()[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    move-result-object v0

    .line 56
    .local v0, values:[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 57
    :cond_0
    sget-object v1, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->CANCELED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    .line 59
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->$VALUES:[Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    return-object v0
.end method
