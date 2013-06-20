.class public Lcom/backflipstudios/android/engine/app/BFSEngineApplication;
.super Landroid/app/Application;
.source "BFSEngineApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
    }
.end annotation


# static fields
.field private static final APP_LAUNCH_COUNT:Ljava/lang/String; = "pref_launch_count"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.backflipstudios.android.engine.BFSEngineApplication.PREFS"


# instance fields
.field private m_addons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;",
            ">;"
        }
    .end annotation
.end field

.field private m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

.field private m_configurationParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    .line 38
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    .line 39
    sget-object v0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Release:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    iput-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    .line 40
    iput-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private loadConfigurationParameters()V
    .locals 12

    .prologue
    .line 206
    :try_start_0
    const-string v10, "configuration.json"

    invoke-static {v10}, Lcom/backflipstudios/android/engine/io/BFSAssetFile;->readContentsOfFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 207
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 208
    new-instance v8, Lorg/json/JSONTokener;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v8, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 209
    .local v8, tokener:Lorg/json/JSONTokener;
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 212
    .local v5, root:Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 213
    .local v7, rootKeys:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 214
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 215
    .local v6, rootKey:Ljava/lang/String;
    const-string v10, "configuration"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 216
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 217
    .local v9, value:Ljava/lang/String;
    const-string v10, "debug"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 218
    sget-object v10, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    iput-object v10, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v0           #data:[B
    .end local v5           #root:Lorg/json/JSONObject;
    .end local v6           #rootKey:Ljava/lang/String;
    .end local v7           #rootKeys:Ljava/util/Iterator;
    .end local v8           #tokener:Lorg/json/JSONTokener;
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "bfsplatform"

    const-string v11, "BFSEngineApplication.loadConfigurationParameters()"

    invoke-static {v10, v11, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 219
    .restart local v0       #data:[B
    .restart local v5       #root:Lorg/json/JSONObject;
    .restart local v6       #rootKey:Ljava/lang/String;
    .restart local v7       #rootKeys:Ljava/util/Iterator;
    .restart local v8       #tokener:Lorg/json/JSONTokener;
    .restart local v9       #value:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v10, "release"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 220
    sget-object v10, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Release:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    iput-object v10, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    goto :goto_0

    .line 222
    .end local v9           #value:Ljava/lang/String;
    :cond_3
    const-string v10, "parameters"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 223
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 226
    .local v4, parametersRoot:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 227
    .local v3, parameterKeys:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, parameterKey:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .restart local v9       #value:Ljava/lang/String;
    iget-object v10, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    if-nez v10, :cond_4

    .line 231
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    .line 233
    :cond_4
    iget-object v10, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public checkBuildConfigurationParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, actualvalue:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x1

    .line 200
    .end local v0           #actualvalue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddonByName(Ljava/lang/String;)Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 168
    .local v1, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1           #pinfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSEngineApplication.getApplicationPackageName()"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const-string v2, ""

    goto :goto_0
.end method

.method public getApplicationPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 139
    const-string v0, "com.backflipstudios.android.engine.BFSEngineApplication.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 146
    .local v1, pinfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #pinfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSEngineApplication.getApplicationVersion()"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    const-string v2, ""

    goto :goto_0
.end method

.method public getApplicationVersionCode()I
    .locals 5

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 157
    .local v1, pinfo:Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #pinfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "bfsplatform"

    const-string v3, "BFSEngineApplication.getApplicationVersionCode()"

    invoke-static {v2, v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getBuildConfiguration()Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    return-object v0
.end method

.method public getBuildConfigurationParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configurationParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRunCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    const-string v1, "com.backflipstudios.android.engine.BFSEngineApplication.PREFS"

    invoke-virtual {p0, v1, v2}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_launch_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 52
    const-string v6, "bfsplatform"

    const-string v9, "BFSEngineApplication.onCreate()"

    invoke-static {v6, v9}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->setMainApplicationInstance(Landroid/app/Application;)V

    .line 56
    invoke-direct {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->loadConfigurationParameters()V

    .line 58
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    sget-object v9, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    if-ne v6, v9, :cond_0

    move v6, v7

    :goto_0
    invoke-static {v6}, Lcom/backflipstudios/android/debug/BFSDebug;->setEnabled(Z)V

    .line 60
    new-instance v6, Lcom/backflipstudios/android/engine/app/BFSEngine;

    iget-object v9, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_configuration:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    sget-object v10, Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;->Debug:Lcom/backflipstudios/android/engine/app/BFSEngineApplication$Configuration;

    if-ne v9, v10, :cond_1

    :goto_1
    invoke-direct {v6, v7}, Lcom/backflipstudios/android/engine/app/BFSEngine;-><init>(Z)V

    iput-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    .line 61
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_engine:Lcom/backflipstudios/android/engine/app/BFSEngine;

    invoke-static {v6}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->setEngineInstance(Lcom/backflipstudios/android/engine/app/BFSEngine;)V

    .line 63
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v6}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->setMainHandlerInstance(Landroid/os/Handler;)V

    .line 64
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {v6}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->setMainThreadInstance(Ljava/lang/Thread;)V

    .line 66
    const-string v6, "com.backflipstudios.android.engine.BFSEngineApplication.PREFS"

    invoke-virtual {p0, v6, v8}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 67
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v6, "pref_launch_count"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 68
    .local v4, launchCount:I
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_launch_count"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    .line 74
    invoke-virtual {p0}, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->registerAddons()V

    .line 76
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 77
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;

    invoke-virtual {v6}, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;->onCreate()V

    goto :goto_2

    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #launchCount:I
    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_0
    move v6, v8

    .line 58
    goto :goto_0

    :cond_1
    move v7, v8

    .line 60
    goto :goto_1

    .line 80
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #launchCount:I
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 5

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 87
    const-string v3, "bfsplatform"

    const-string v4, "BFSEngineApplication.onLowMemory()"

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 90
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;

    invoke-virtual {v3}, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;->onLowMemory()V

    goto :goto_0

    .line 93
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 101
    const-string v0, "bfsplatform"

    const-string v1, "BFSEngineApplication.onTerminate()"

    invoke-static {v0, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 112
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    .line 113
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "runnable"
    .parameter "delayMillis"

    .prologue
    .line 106
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainHandlerInstance()Landroid/os/Handler;

    move-result-object v0

    .line 107
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    return-void
.end method

.method protected registerAddon(Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;)V
    .locals 2
    .parameter "addon"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/backflipstudios/android/engine/app/BFSEngineApplication;->m_addons:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/backflipstudios/android/engine/app/BFSApplicationAddon;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method protected registerAddons()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
