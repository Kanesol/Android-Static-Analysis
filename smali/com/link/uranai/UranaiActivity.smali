.class public Lcom/link/uranai/UranaiActivity;
.super Landroid/app/Activity;
.source "UranaiActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/link/uranai/UranaiActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/link/uranai/UranaiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/trck8/app/Startup;->execute(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v5, "a14f6aa0fb09989"

    invoke-direct {v0, p0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 29
    .local v0, adView:Lcom/google/ads/AdView;
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/link/uranai/UranaiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 32
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 37
    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    .line 38
    .local v3, request:Lcom/google/ads/AdRequest;
    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 41
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/link/uranai/UranaiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 42
    .local v1, btnStr:Landroid/widget/Button;
    new-instance v4, Lcom/link/uranai/UranaiActivity$1;

    invoke-direct {v4, p0}, Lcom/link/uranai/UranaiActivity$1;-><init>(Lcom/link/uranai/UranaiActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
