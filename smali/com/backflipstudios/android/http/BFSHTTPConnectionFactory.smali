.class public Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;
.super Ljava/lang/Object;
.source "BFSHTTPConnectionFactory.java"


# static fields
.field private static m_manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;->m_manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized newConnection(Ljava/lang/String;)Lcom/backflipstudios/android/http/BFSHTTPConnection;
    .locals 6
    .parameter "method"

    .prologue
    .line 14
    const-class v4, Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;->m_manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    if-nez v3, :cond_0

    .line 17
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 18
    .local v0, defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 19
    .local v1, mgr:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 21
    .local v2, params:Lorg/apache/http/params/HttpParams;
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v3, Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;->m_manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 24
    .end local v0           #defaultClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v1           #mgr:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    :cond_0
    new-instance v3, Lcom/backflipstudios/android/http/BFSHTTPConnection;

    sget-object v5, Lcom/backflipstudios/android/http/BFSHTTPConnectionFactory;->m_manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v5, p0}, Lcom/backflipstudios/android/http/BFSHTTPConnection;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 14
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
