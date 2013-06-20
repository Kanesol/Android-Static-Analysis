.class public abstract Lcom/flurry/android/AdNetworkView;
.super Lcom/flurry/android/o;
.source "SourceFile"


# static fields
.field public static sAdNetworkApiKey:Ljava/lang/String;

.field public static sAdNetworkApiKey2:Ljava/lang/String;


# instance fields
.field public fAdCreative:Lcom/flurry/android/AdCreative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/AdCreative;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/android/o;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/flurry/android/AdNetworkView;->fAdCreative:Lcom/flurry/android/AdCreative;

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdCreative;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/o;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;)V

    .line 16
    iput-object p4, p0, Lcom/flurry/android/AdNetworkView;->fAdCreative:Lcom/flurry/android/AdCreative;

    .line 17
    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "clicked"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public onAdClosed(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "adClosed"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public onAdFilled(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "filled"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 28
    return-void
.end method

.method public onAdShown(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "rendered"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    return-void
.end method

.method public onAdUnFilled(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "unfilled"

    invoke-super {p0, v0, p1}, Lcom/flurry/android/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    return-void
.end method
