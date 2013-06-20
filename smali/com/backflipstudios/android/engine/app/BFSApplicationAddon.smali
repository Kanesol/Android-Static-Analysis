.class public abstract Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;
.super Ljava/lang/Object;
.source "BFSApplicationAddon.java"


# instance fields
.field protected m_application:Landroid/app/Application;


# direct methods
.method protected constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;->m_application:Landroid/app/Application;

    .line 11
    iput-object p1, p0, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;->m_application:Landroid/app/Application;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract onCreate()V
.end method

.method public abstract onLowMemory()V
.end method
