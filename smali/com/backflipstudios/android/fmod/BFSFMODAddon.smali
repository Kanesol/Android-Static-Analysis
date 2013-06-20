.class public Lcom/backflipstudios/android/fmod/BFSFMODAddon;
.super Lcom/backflipstudios/android/engine/app/BFSActivityAddon;
.source "BFSFMODAddon.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BFSFMODAddon"


# instance fields
.field private m_audioDevice:Lorg/fmod/FMODAudioDevice;

.field private m_isActivityFocused:Z

.field private m_isActivityRunning:Z

.field private m_isDeviceRunning:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/backflipstudios/android/engine/app/BFSActivityAddon;-><init>(Landroid/app/Activity;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_audioDevice:Lorg/fmod/FMODAudioDevice;

    .line 16
    iput-boolean v1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityFocused:Z

    .line 17
    iput-boolean v1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityRunning:Z

    .line 18
    iput-boolean v1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isDeviceRunning:Z

    .line 23
    return-void
.end method

.method private startAudio()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isDeviceRunning:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_audioDevice:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isDeviceRunning:Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "BFSFMODAddon"

    return-object v0
.end method

.method public getType()Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;->Other:Lcom/backflipstudios/android/engine/app/BFSActivityAddon$AddonType;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 85
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v0}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_audioDevice:Lorg/fmod/FMODAudioDevice;

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_audioDevice:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    .line 57
    iput-boolean v1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityRunning:Z

    .line 58
    iput-boolean v1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isDeviceRunning:Z

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityRunning:Z

    .line 66
    invoke-direct {p0}, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->startAudio()V

    .line 67
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->m_isActivityFocused:Z

    .line 74
    invoke-direct {p0}, Lcom/backflipstudios/android/fmod/BFSFMODAddon;->startAudio()V

    .line 75
    return-void
.end method
