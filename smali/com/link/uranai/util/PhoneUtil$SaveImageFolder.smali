.class public final enum Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;
.super Ljava/lang/Enum;
.source "PhoneUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/link/uranai/util/PhoneUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SaveImageFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CURRENT_DIR:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

.field private static final synthetic ENUM$VALUES:[Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

.field public static final enum TARENT_VIEW:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;


# instance fields
.field public code:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    const-string v1, "CURRENT_DIR"

    .line 36
    const-string v2, "/sdcard/ACT/"

    const-string v3, "\u30a2\u30d7\u30ea\u306e\u30eb\u30fc\u30c8\u30c7\u30a3\u30ec\u30af\u30c8\u30ea"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->CURRENT_DIR:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    .line 37
    new-instance v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    const-string v1, "TARENT_VIEW"

    .line 40
    const-string v2, "/tarent_view"

    const-string v3, "\u30bf\u30ec\u30f3\u30c8\u4e00\u89a7\u753b\u9762\u30d5\u30a9\u30eb\u30c0"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->TARENT_VIEW:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    sget-object v1, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->CURRENT_DIR:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->TARENT_VIEW:Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->ENUM$VALUES:[Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .parameter "value"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->code:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    return-object v0
.end method

.method public static values()[Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;->ENUM$VALUES:[Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    array-length v1, v0

    new-array v2, v1, [Lcom/link/uranai/util/PhoneUtil$SaveImageFolder;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
