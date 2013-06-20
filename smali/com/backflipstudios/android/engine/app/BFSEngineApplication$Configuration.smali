.class public final enum Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
.super Ljava/lang/Enum;
.source "BFSEngineApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

.field public static final enum Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

.field public static final enum Release:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    .line 31
    new-instance v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    const-string v1, "Release"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Release:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Release:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    aput-object v1, v0, v3

    sput-object v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->$VALUES:[Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->$VALUES:[Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    return-object v0
.end method
