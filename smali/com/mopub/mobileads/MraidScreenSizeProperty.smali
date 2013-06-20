.class Lcom/mopub/mobileads/MraidScreenSizeProperty;
.super Lcom/mopub/mobileads/MraidProperty;
.source "MraidProperty.java"


# instance fields
.field private final mScreenHeight:I

.field private final mScreenWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidProperty;-><init>()V

    .line 42
    iput p1, p0, Lcom/mopub/mobileads/MraidScreenSizeProperty;->mScreenWidth:I

    .line 43
    iput p2, p0, Lcom/mopub/mobileads/MraidScreenSizeProperty;->mScreenHeight:I

    .line 44
    return-void
.end method

.method public static createWithSize(II)Lcom/mopub/mobileads/MraidScreenSizeProperty;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    new-instance v0, Lcom/mopub/mobileads/MraidScreenSizeProperty;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MraidScreenSizeProperty;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public toJsonPair()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenSize: { width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/MraidScreenSizeProperty;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/MraidScreenSizeProperty;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
