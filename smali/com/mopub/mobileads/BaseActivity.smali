.class public abstract Lcom/mopub/mobileads/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final CLOSE_BUTTON_PADDING_DP:F = 8.0f

.field private static final CLOSE_BUTTON_SIZE_DP:F = 50.0f


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdView()Landroid/view/View;
.end method

.method protected hideInterstitialCloseButton()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/BaseActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 27
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 28
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    .local v0, adViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object v1, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->getAdView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object v1, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->showInterstitialCloseButton()V

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    return-void
.end method

.method protected showInterstitialCloseButton()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f00

    const/4 v8, 0x0

    .line 40
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 41
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 42
    .local v4, states:Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v10, [I

    const v6, -0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_normal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 44
    new-array v5, v10, [I

    const v6, 0x10100a7

    aput v6, v5, v8

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/mopub/mobileads/R$drawable;->close_button_pressed:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 46
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    .line 47
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/mopub/mobileads/BaseActivity$1;

    invoke-direct {v6, p0}, Lcom/mopub/mobileads/BaseActivity$1;-><init>(Lcom/mopub/mobileads/BaseActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .end local v4           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .local v3, scale:F
    const/high16 v5, 0x4248

    mul-float/2addr v5, v3

    add-float/2addr v5, v9

    float-to-int v2, v5

    .line 58
    .local v2, buttonSize:I
    const/high16 v5, 0x4100

    mul-float/2addr v5, v3

    add-float/2addr v5, v9

    float-to-int v1, v5

    .line 59
    .local v1, buttonPadding:I
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v0, buttonLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 62
    invoke-virtual {v0, v1, v8, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 64
    iget-object v5, p0, Lcom/mopub/mobileads/BaseActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/mopub/mobileads/BaseActivity;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method
