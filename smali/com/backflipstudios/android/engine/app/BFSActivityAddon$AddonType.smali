.class public final enum Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
.super Ljava/lang/Enum;
.source "BFSActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

.field public static final enum BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

.field public static final enum InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

.field public static final enum InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

.field public static final enum Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    const-string v1, "BannerAds"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    .line 13
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    const-string v1, "InterstitialAds"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    .line 14
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    const-string v1, "InAppPurchase"

    invoke-direct {v0, v1, v4}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    .line 15
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v5}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->BannerAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InterstitialAds:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->InAppPurchase:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->$VALUES:[Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->$VALUES:[Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method
