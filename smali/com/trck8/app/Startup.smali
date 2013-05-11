.class public Lcom/trck8/app/Startup;
.super Ljava/lang/Object;
.source "Startup.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "app.trck8.com.txt"

.field private static executeFlg:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/trck8/app/Startup;->executeFlg:Ljava/lang/Boolean;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 34
    sget-object v7, Lcom/trck8/app/Startup;->executeFlg:Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v7, Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v7, Lcom/trck8/app/Startup;->executeFlg:Ljava/lang/Boolean;

    .line 40
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v5, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v1, 0x0

    .line 47
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v7, "packageName"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_1
    :try_start_1
    const-string v7, "httpProxyHost"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_HTTP_PROXY_HOST"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 59
    :goto_2
    :try_start_2
    const-string v7, "httpProxyPort"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_HTTP_PROXY_PORT"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    .line 64
    :goto_3
    :try_start_3
    const-string v7, "pid"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_MOBA8_PID"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 68
    :goto_4
    :try_start_4
    const-string v7, "orderId"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_ORDER_ID"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 72
    :goto_5
    :try_start_5
    const-string v7, "siteFlg"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_SITE_FLG"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 76
    :goto_6
    :try_start_6
    const-string v7, "thanksUri"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_THANKS_URI"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 80
    :goto_7
    :try_start_7
    const-string v7, "executeUri"

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "TRCK8_EXECUTE_URI"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 83
    :goto_8
    const/4 v6, 0x0

    .line 86
    .local v6, tmpFileName:Ljava/lang/String;
    :try_start_8
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "TRCK8_FILE_NAME"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v6

    .line 88
    :goto_9
    if-nez v6, :cond_2

    const-string v6, "app.trck8.com.txt"

    .line 89
    :cond_2
    move-object v3, v6

    .line 92
    .local v3, fileName:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/trck8/app/util/LogFile;->getKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, key:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 97
    const-string v7, "key"

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/trck8/app/Startup$1;

    invoke-direct {v8, v5}, Lcom/trck8/app/Startup$1;-><init>(Ljava/util/Map;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 48
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #tmpFileName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "Startup"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 112
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #fileName:Ljava/lang/String;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v6       #tmpFileName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, androidId:Ljava/lang/String;
    const-string v7, "Startup"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "androidId:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {v0}, Lcom/trck8/app/util/Converter;->androidId2Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_0

    .line 122
    const-string v7, "key"

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/trck8/app/Startup$2;

    invoke-direct {v8, v5, p0, v3}, Lcom/trck8/app/Startup$2;-><init>(Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 87
    .end local v0           #androidId:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #key:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_9

    .line 81
    .end local v6           #tmpFileName:Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_8

    .line 77
    :catch_3
    move-exception v7

    goto/16 :goto_7

    .line 73
    :catch_4
    move-exception v7

    goto/16 :goto_6

    .line 69
    :catch_5
    move-exception v7

    goto/16 :goto_5

    .line 65
    :catch_6
    move-exception v7

    goto/16 :goto_4

    .line 60
    :catch_7
    move-exception v7

    goto/16 :goto_3

    .line 56
    :catch_8
    move-exception v7

    goto/16 :goto_2
.end method
