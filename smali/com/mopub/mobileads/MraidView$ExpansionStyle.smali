.class final enum Lcom/mopub/mobileads/MraidView$ExpansionStyle;
.super Ljava/lang/Enum;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ExpansionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/MraidView$ExpansionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/MraidView$ExpansionStyle;

.field public static final enum DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

.field public static final enum ENABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->ENABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    .line 73
    new-instance v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/MraidView$ExpansionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->ENABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->DISABLED:Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->$VALUES:[Lcom/mopub/mobileads/MraidView$ExpansionStyle;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MraidView$ExpansionStyle;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/MraidView$ExpansionStyle;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mopub/mobileads/MraidView$ExpansionStyle;->$VALUES:[Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MraidView$ExpansionStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MraidView$ExpansionStyle;

    return-object v0
.end method
