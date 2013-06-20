.class public abstract Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.super Ljava/lang/Object;
.source "BFSActivityAddon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    }
.end annotation


# instance fields
.field protected m_activity:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->m_activity:Landroid/app/Activity;

    .line 22
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;->m_activity:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 45
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 37
    return-void
.end method

.method public abstract onCreate()V
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onDestroy()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 41
    return-void
.end method
