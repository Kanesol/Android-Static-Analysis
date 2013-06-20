.class public final enum Lcom/mopub/mobileads/MoPubView$LocationAwareness;
.super Ljava/lang/Enum;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationAwareness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/MoPubView$LocationAwareness;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_DISABLED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_NORMAL:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

.field public static final enum LOCATION_AWARENESS_TRUNCATED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    new-instance v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_TRUNCATED"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    new-instance v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    const-string v1, "LOCATION_AWARENESS_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/MoPubView$LocationAwareness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    sget-object v1, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_NORMAL:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->$VALUES:[Lcom/mopub/mobileads/MoPubView$LocationAwareness;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->$VALUES:[Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubView$LocationAwareness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    return-object v0
.end method
