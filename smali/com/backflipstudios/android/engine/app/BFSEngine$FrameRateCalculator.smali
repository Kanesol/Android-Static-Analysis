.class Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;
.super Ljava/lang/Object;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameRateCalculator"
.end annotation


# instance fields
.field private m_frameStart:J

.field private final m_sampleCount:I

.field private m_sampleIndex:I

.field private m_samples:[J

.field private m_time:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0xfa

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput v2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleCount:I

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_samples:[J

    .line 261
    iput v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    .line 262
    iput-wide v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    .line 263
    iput-wide v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_frameStart:J

    .line 267
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_samples:[J

    .line 268
    iput v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    .line 269
    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 10

    .prologue
    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_frameStart:J

    sub-long v0, v6, v8

    .line 274
    .local v0, dt:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_frameStart:J

    .line 276
    iget-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    iget-object v8, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_samples:[J

    iget v9, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    aget-wide v8, v8, v9

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    .line 277
    iget-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    .line 278
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_samples:[J

    iget v7, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    aput-wide v0, v6, v7

    .line 279
    iget v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    const/16 v7, 0xfa

    if-ne v6, v7, :cond_0

    .line 280
    const/4 v6, 0x0

    iput v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_sampleIndex:I

    .line 281
    iget-wide v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$FrameRateCalculator;->m_time:J

    long-to-double v6, v6

    const-wide v8, 0x406f400000000000L

    div-double v4, v6, v8

    .line 282
    .local v4, frameAverage:D
    const-string v6, "bfsplatform"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Frame Average: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-wide v6, 0x408f400000000000L

    div-double v2, v6, v4

    .line 284
    .local v2, fps:D
    const-string v6, "bfsplatform"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current FPS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v2           #fps:D
    .end local v4           #frameAverage:D
    :cond_0
    return-void
.end method
