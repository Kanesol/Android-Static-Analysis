.class Lcom/mopub/mobileads/MraidView$MraidListenerInfo;
.super Ljava/lang/Object;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MraidListenerInfo"
.end annotation


# instance fields
.field private mOnCloseButtonListener:Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

.field private mOnCloseListener:Lcom/mopub/mobileads/MraidView$OnCloseListener;

.field private mOnExpandListener:Lcom/mopub/mobileads/MraidView$OnExpandListener;

.field private mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;

.field private mOnOpenListener:Lcom/mopub/mobileads/MraidView$OnOpenListener;

.field private mOnReadyListener:Lcom/mopub/mobileads/MraidView$OnReadyListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnFailureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnFailureListener;)Lcom/mopub/mobileads/MraidView$OnFailureListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/mopub/mobileads/MraidView$OnFailureListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/mopub/mobileads/MraidView$OnExpandListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnExpandListener;)Lcom/mopub/mobileads/MraidView$OnExpandListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/mopub/mobileads/MraidView$OnExpandListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnCloseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/mopub/mobileads/MraidView$OnCloseListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnCloseListener;)Lcom/mopub/mobileads/MraidView$OnCloseListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/mopub/mobileads/MraidView$OnCloseListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnReadyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/mopub/mobileads/MraidView$OnReadyListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnReadyListener;)Lcom/mopub/mobileads/MraidView$OnReadyListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/mopub/mobileads/MraidView$OnReadyListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;)Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/mopub/mobileads/MraidView$OnCloseButtonStateChangeListener;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;)Lcom/mopub/mobileads/MraidView$OnOpenListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/mopub/mobileads/MraidView$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mopub/mobileads/MraidView$MraidListenerInfo;Lcom/mopub/mobileads/MraidView$OnOpenListener;)Lcom/mopub/mobileads/MraidView$OnOpenListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mopub/mobileads/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/mopub/mobileads/MraidView$OnOpenListener;

    return-object p1
.end method
