.class public final enum Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;
.super Ljava/lang/Enum;
.source "BFSBannerAdActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

.field public static final enum BannerPositionBottom:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

.field public static final enum BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    const-string v1, "BannerPositionTop"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    new-instance v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    const-string v1, "BannerPositionBottom"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionBottom:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionTop:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->BannerPositionBottom:Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->$VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->$VALUES:[Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/engine/app/addons/BFSBannerAdActivityAddon$BannerPosition;

    return-object v0
.end method
