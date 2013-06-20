.class public final enum Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;
.super Ljava/lang/Enum;
.source "BFSRatingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreFront"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

.field public static final enum Amazon:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

.field public static final enum Google:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    const-string v1, "Amazon"

    invoke-direct {v0, v1, v2}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Amazon:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    .line 24
    new-instance v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    const-string v1, "Google"

    invoke-direct {v0, v1, v3}, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Google:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    sget-object v1, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Amazon:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    aput-object v1, v0, v2

    sget-object v1, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->Google:Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    aput-object v1, v0, v3

    sput-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->$VALUES:[Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    return-object v0
.end method

.method public static values()[Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->$VALUES:[Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    invoke-virtual {v0}, [Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/backflipstudios/android/engine/app/dialog/BFSRatingsDialog$StoreFront;

    return-object v0
.end method
