.class public final Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/android/aj;

.field private c:Lcom/flurry/android/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 26
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setTheme(I)V

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 31
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    if-nez v1, :cond_3

    .line 35
    if-nez p1, :cond_2

    .line 36
    :goto_0
    if-gez v5, :cond_0

    .line 38
    const-string v1, "frameIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 40
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->b()Lcom/flurry/android/be;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/flurry/android/be;->n()Lcom/flurry/android/AdUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    new-instance v0, Lcom/flurry/android/aj;

    invoke-virtual {v2}, Lcom/flurry/android/be;->m()Lcom/flurry/android/bb;

    move-result-object v3

    invoke-virtual {v2}, Lcom/flurry/android/be;->n()Lcom/flurry/android/AdUnit;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/aj;-><init>(Landroid/content/Context;Lcom/flurry/android/be;Lcom/flurry/android/bb;Lcom/flurry/android/AdUnit;I)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    .line 43
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    invoke-virtual {v0, p0}, Lcom/flurry/android/aj;->initLayout(Landroid/content/Context;)V

    .line 44
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 35
    :cond_2
    const-string v1, "frameIndex"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/flurry/android/aw;

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/aw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/aw;

    .line 53
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/aw;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected final onDestroy()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    iget-object v3, v3, Lcom/flurry/android/aj;->e:Lcom/flurry/android/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    iget-object v4, v4, Lcom/flurry/android/aj;->g:Lcom/flurry/android/bb;

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    iget v5, v5, Lcom/flurry/android/aj;->f:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/aj;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/AdUnit;Lcom/flurry/android/bb;II)V

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    return-void
.end method

.method protected final onRestart()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 101
    return-void
.end method

.method protected final onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "frameIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 62
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 74
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/aj;

    invoke-virtual {v0}, Lcom/flurry/android/aj;->b()V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 79
    return-void
.end method
