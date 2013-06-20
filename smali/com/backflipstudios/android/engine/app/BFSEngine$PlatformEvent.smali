.class Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;
.super Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformEvent"
.end annotation


# instance fields
.field public m_name:Ljava/lang/String;

.field public m_param0:Ljava/lang/String;

.field public m_param1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "param0"
    .parameter "param1"

    .prologue
    .line 233
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;-><init>(I)V

    .line 235
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_name:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_param0:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$PlatformEvent;->m_param1:Ljava/lang/String;

    .line 238
    return-void
.end method
