.class Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;
.super Lcom/backflipstudios/android/engine/app/BFSEngine$Event;
.source "BFSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/backflipstudios/android/engine/app/BFSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackEvent"
.end annotation


# instance fields
.field public m_callbackID:Ljava/lang/String;

.field public m_param0:Ljava/lang/String;

.field public m_param1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callbackID"
    .parameter "param0"
    .parameter "param1"

    .prologue
    .line 249
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/backflipstudios/android/engine/app/BFSEngine$Event;-><init>(I)V

    .line 251
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_callbackID:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_param0:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/backflipstudios/android/engine/app/BFSEngine$CallbackEvent;->m_param1:Ljava/lang/String;

    .line 254
    return-void
.end method
