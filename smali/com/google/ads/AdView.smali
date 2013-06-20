.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/Ad;


# instance fields
.field private a:Lcom/google/ads/internal/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "adSize"
    .parameter "adUnitId"

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/internal/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    .line 95
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;[Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "adSizes"
    .parameter "adUnitId"

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lcom/google/ads/AdSize;

    invoke-direct {v0, v1, v1}, Lcom/google/ads/AdSize;-><init>(II)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p2}, Lcom/google/ads/AdView;->a([Lcom/google/ads/AdSize;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method private a(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/internal/b;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 534
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 535
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 538
    new-instance v0, Lcom/google/ads/internal/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/internal/d;-><init>(Lcom/google/ads/Ad;Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    .line 541
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-static {p1, v0}, Lcom/google/ads/internal/j;->a(Landroid/app/Activity;Lcom/google/ads/internal/d;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    .line 546
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 549
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    .line 563
    :goto_0
    return-void

    .line 553
    :cond_0
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    const-string v1, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 559
    invoke-virtual {p0, v5, v7, v7}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 357
    if-nez p2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const/4 v2, 0x0

    .line 364
    :try_start_0
    const-string v1, "adSize"

    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->a(Ljava/lang/String;)[Lcom/google/ads/AdSize;
    :try_end_0
    .catch Lcom/google/ads/internal/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 368
    if-eqz v7, :cond_2

    :try_start_1
    array-length v2, v7

    if-nez v2, :cond_3

    .line 369
    :cond_2
    new-instance v2, Lcom/google/ads/internal/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_1
    .catch Lcom/google/ads/internal/b; {:try_start_1 .. :try_end_1} :catch_0

    .line 421
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    .line 422
    :goto_1
    const-string v3, "Could not initialize AdView"

    invoke-virtual {v2, v3}, Lcom/google/ads/internal/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    aget-object v1, v1, v8

    :goto_2
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    .line 427
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/b;->a(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_3
    :try_start_2
    const-string v1, "adUnitId"

    invoke-direct {p0, v1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 374
    new-instance v1, Lcom/google/ads/internal/b;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v1

    .line 378
    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    const-string v3, "Ads by Google"

    const/4 v4, -0x1

    const/4 v1, 0x0

    aget-object v5, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 383
    :cond_5
    const-string v1, "adUnitId"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v2

    .line 386
    const-string v1, "loadAdOnCreate"

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Z

    move-result v3

    .line 389
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    .line 390
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 393
    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z

    .line 394
    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z

    .line 397
    array-length v4, v7

    if-ne v4, v5, :cond_7

    .line 398
    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 404
    :goto_3
    if-eqz v3, :cond_0

    .line 405
    const-string v1, "testDevices"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/ads/AdView;->c(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/util/Set;

    move-result-object v1

    .line 407
    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 408
    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_6
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/ads/AdRequest;->setTestDevices(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    move-result-object v1

    const-string v2, "keywords"

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/google/ads/AdView;->c(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_0

    .line 400
    :cond_7
    new-instance v4, Lcom/google/ads/AdSize;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0, v7}, Lcom/google/ads/AdView;->a([Lcom/google/ads/AdSize;)V

    goto :goto_3

    .line 417
    :cond_8
    new-instance v1, Lcom/google/ads/internal/b;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_2
    .catch Lcom/google/ads/internal/b; {:try_start_2 .. :try_end_2} :catch_0

    .line 422
    :cond_9
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    goto/16 :goto_2

    .line 421
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-static {p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 297
    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method private varargs a([Lcom/google/ads/AdSize;)V
    .locals 4
    .parameter

    .prologue
    .line 657
    array-length v0, p1

    new-array v1, v0, [Lcom/google/ads/AdSize;

    .line 658
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 659
    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/AdSize;->createAdSize(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/AdSize;

    move-result-object v2

    aput-object v2, v1, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->l:Lcom/google/ads/util/i$c;

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 662
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    .line 232
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/internal/b;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 437
    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1, p4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 440
    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 442
    const-string v4, "^@([^:]+)\\:(.*)$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    const-string v0, "^@([^:]+)\\:(.*)$"

    const-string v4, "$1"

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    const-string v4, "^@([^:]+)\\:(.*)$"

    const-string v5, "@$2"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    :cond_0
    const-string v4, "@bool/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 447
    const-string v3, "@bool/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 448
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":bool/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v4, v3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    iget v0, v4, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 457
    iget v0, v4, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_1

    move v0, v2

    .line 464
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    new-instance v3, Lcom/google/ads/internal/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find resource for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2, v0}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    throw v3

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 459
    :cond_2
    new-instance v0, Lcom/google/ads/internal/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was not a boolean: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 520
    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/internal/b;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 469
    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 472
    const-string v2, "^@([^:]+)\\:(.*)$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const-string v0, "^@([^:]+)\\:(.*)$"

    const-string v2, "$1"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v2, "^@([^:]+)\\:(.*)$"

    const-string v3, "@$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    :cond_0
    const-string v2, "@string/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    const-string v2, "@string/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 481
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ":string/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 494
    :cond_1
    if-eqz p4, :cond_3

    if-nez v1, :cond_3

    .line 495
    new-instance v0, Lcom/google/ads/internal/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required XML attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    new-instance v2, Lcom/google/ads/internal/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find resource for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v6, v0}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    throw v2

    .line 489
    :cond_2
    new-instance v0, Lcom/google/ads/internal/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/google/ads/internal/b;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 498
    :cond_3
    return-object v1
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/AdSize;Landroid/util/AttributeSet;)V

    .line 261
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/util/Set;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/internal/b;
        }
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdView;->b(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Ljava/lang/String;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 506
    if-eqz v0, :cond_1

    .line 507
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 508
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 509
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    return-object v1
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/AdSize;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x11

    .line 162
    if-nez p4, :cond_0

    .line 163
    sget-object p4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/AdSize;->createAdSize(Lcom/google/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/AdSize;

    move-result-object v3

    .line 168
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 170
    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 178
    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 183
    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 189
    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v4

    .line 190
    invoke-virtual {v3}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v3

    .line 193
    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 194
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    .line 197
    :cond_1
    return-void

    .line 170
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 178
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 183
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method a(Ljava/lang/String;)[Lcom/google/ads/AdSize;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 306
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 307
    array-length v0, v7

    new-array v4, v0, [Lcom/google/ads/AdSize;

    move v0, v1

    .line 308
    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_a

    .line 309
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 311
    const-string v5, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    const-string v5, "[xX]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 313
    aget-object v2, v5, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 314
    aget-object v2, v5, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    .line 318
    :try_start_0
    const-string v2, "FULL_WIDTH"

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    move v6, v2

    .line 320
    :goto_1
    const-string v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x2

    .line 325
    :goto_2
    new-instance v5, Lcom/google/ads/AdSize;

    invoke-direct {v5, v6, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    move-object v2, v5

    .line 336
    :goto_3
    if-nez v2, :cond_9

    .line 343
    :goto_4
    return-object v3

    .line 318
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_1

    .line 320
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_2

    .line 327
    :cond_2
    const-string v5, "BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_3
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_4
    const-string v5, "IAB_MRECT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v2, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_5
    const-string v5, "IAB_BANNER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v2, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_6
    const-string v5, "IAB_LEADERBOARD"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v2, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_7
    const-string v5, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    goto :goto_3

    :cond_8
    move-object v2, v3

    goto :goto_3

    .line 340
    :cond_9
    aput-object v2, v4, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v3, v4

    .line 343
    goto :goto_4

    .line 322
    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->b()V

    .line 275
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->r()Z

    move-result v0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    if-nez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    .line 593
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->s()Z

    move-result v0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/ads/AdRequest;)V
    .locals 1
    .parameter "adRequest"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->e()V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest;)V

    .line 613
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_0

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 674
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 675
    return-void
.end method

.method public setAdListener(Lcom/google/ads/AdListener;)V
    .locals 1
    .parameter "adListener"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 625
    return-void
.end method

.method protected setAppEventListener(Lcom/google/ads/AppEventListener;)V
    .locals 1
    .parameter "appEventListener"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->n:Lcom/google/ads/util/i$c;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method protected varargs setSupportedAdSizes([Lcom/google/ads/AdSize;)V
    .locals 1
    .parameter "adSizes"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->l:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 643
    const-string v0, "Error: Tried to set supported ad sizes on a single-size AdView."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 648
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/AdView;->a([Lcom/google/ads/AdSize;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->A()V

    .line 687
    :cond_0
    return-void
.end method
