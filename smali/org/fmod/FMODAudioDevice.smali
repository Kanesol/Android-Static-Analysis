.class public Lorg/fmod/FMODAudioDevice;
.super Ljava/lang/Object;
.source "FMODAudioDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static FMOD_INFO_DSPBUFFERLENGTH:I

.field private static FMOD_INFO_DSPNUMBUFFERS:I

.field private static FMOD_INFO_MIXERRUNNING:I

.field private static FMOD_INFO_SAMPLERATE:I

.field private static NUMCHANNELS:I


# instance fields
.field private mInitialised:Z

.field private mRunning:Z

.field private mThread:Ljava/lang/Thread;

.field private mTrack:Landroid/media/AudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 13
    sput v1, Lorg/fmod/FMODAudioDevice;->NUMCHANNELS:I

    .line 135
    const/4 v0, 0x0

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_SAMPLERATE:I

    .line 136
    const/4 v0, 0x1

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPBUFFERLENGTH:I

    .line 137
    sput v1, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPNUMBUFFERS:I

    .line 138
    const/4 v0, 0x3

    sput v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_MIXERRUNNING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    .line 16
    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 17
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 18
    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    return-void
.end method

.method private native fmodGetInfo(I)I
.end method

.method private native fmodProcess(Ljava/nio/ByteBuffer;)I
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 54
    move-object v0, v9

    move-object v3, v9

    .line 57
    :goto_0
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    if-eqz v2, :cond_5

    .line 59
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    if-nez v2, :cond_3

    .line 61
    sget v2, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_SAMPLERATE:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    .line 62
    if-lez v2, :cond_2

    .line 64
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 67
    iput-object v9, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 73
    :cond_0
    invoke-static {v2, v1, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 74
    sget v0, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPBUFFERLENGTH:I

    invoke-direct {p0, v0}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v0

    .line 75
    sget v3, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_DSPNUMBUFFERS:I

    invoke-direct {p0, v3}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v3

    .line 77
    mul-int v7, v0, v3

    mul-int/lit8 v7, v7, 0x2

    sget v8, Lorg/fmod/FMODAudioDevice;->NUMCHANNELS:I

    mul-int/2addr v7, v8

    if-le v7, v5, :cond_1

    .line 79
    mul-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    sget v5, Lorg/fmod/FMODAudioDevice;->NUMCHANNELS:I

    mul-int/2addr v5, v3

    .line 82
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    sget v3, Lorg/fmod/FMODAudioDevice;->NUMCHANNELS:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 83
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v7, v0, [B

    .line 85
    new-instance v0, Landroid/media/AudioTrack;

    move v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 86
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 88
    iput-boolean v6, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    move-object v0, v7

    move-object v2, v8

    :goto_1
    move-object v3, v2

    .line 101
    goto :goto_0

    .line 94
    :cond_2
    const-wide/16 v7, 0x1

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 99
    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_1

    .line 104
    :cond_3
    sget v2, Lorg/fmod/FMODAudioDevice;->FMOD_INFO_MIXERRUNNING:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    .line 105
    if-ne v2, v6, :cond_4

    .line 107
    invoke-direct {p0, v3}, Lorg/fmod/FMODAudioDevice;->fmodProcess(Ljava/nio/ByteBuffer;)I

    .line 109
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v3, v0, v10, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 111
    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v0, v10, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 113
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 121
    :cond_4
    iput-boolean v10, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    move-object v0, v9

    move-object v3, v9

    goto/16 :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 128
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 129
    iput-object v9, p0, Lorg/fmod/FMODAudioDevice;->mTrack:Landroid/media/AudioTrack;

    .line 132
    :cond_6
    iput-boolean v10, p0, Lorg/fmod/FMODAudioDevice;->mInitialised:Z

    .line 133
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    .line 28
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 31
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 36
    :goto_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->mRunning:Z

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method
