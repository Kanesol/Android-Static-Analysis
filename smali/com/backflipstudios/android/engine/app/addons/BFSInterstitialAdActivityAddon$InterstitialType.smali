.class public final enum Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;
.super Ljava/lang/Enum;
.source "BFSInterstitialAdActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterstitialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

.field public static final enum GameplayInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

.field public static final enum StartupInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    const-string v1, "StartupInterstitial"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->StartupInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    new-instance v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    const-string v1, "GameplayInterstitial"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->GameplayInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->StartupInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->GameplayInterstitial:Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->$VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->$VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/engine/app/addons/BFSInterstitialAdActivityAddon$InterstitialType;

    return-object v0
.end method
