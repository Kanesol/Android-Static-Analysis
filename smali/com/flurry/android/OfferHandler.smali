.class public Lcom/flurry/android/OfferHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getOfferMapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdClicked(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    const-string v1, "clicked"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 44
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    const-string v1, "adClosed"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 50
    return-void
.end method

.method public onAdFilled(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    const-string v1, "filled"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 26
    return-void
.end method

.method public onAdShown(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    const-string v1, "rendered"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 38
    return-void
.end method

.method public onAdUnFilled(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    const-string v1, "unfilled"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/flurry/android/be;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/bb;

    .line 32
    return-void
.end method
