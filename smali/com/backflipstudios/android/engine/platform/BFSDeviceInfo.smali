.class public Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;
.super Ljava/lang/Object;
.source "BFSDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;
    }
.end annotation


# static fields
.field private static final DENSITY_DPI_HIGH:Ljava/lang/String; = "high"

.field private static final DENSITY_DPI_LOW:Ljava/lang/String; = "low"

.field private static final DENSITY_DPI_MEDIUM:Ljava/lang/String; = "medium"

.field private static final DENSITY_DPI_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final DENSITY_DPI_XHIGH:Ljava/lang/String; = "xtrahigh"

.field private static final LAYOUT_LARGE:Ljava/lang/String; = "large"

.field private static final LAYOUT_NORMAL:Ljava/lang/String; = "normal"

.field private static final LAYOUT_SMALL:Ljava/lang/String; = "small"

.field private static final LAYOUT_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final LAYOUT_XTRALARGE:Ljava/lang/String; = "xtralarge"

.field private static final NETWORK_TYPE_NONE:Ljava/lang/String; = "none"

.field private static final NETWORK_TYPE_WWAN:Ljava/lang/String; = "wwan"

.field private static m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

.field private static m_usableDisplayHeight:I

.field private static m_usableDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    .line 44
    sput v1, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayWidth:I

    .line 45
    sput v1, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    return-void
.end method

.method public static getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCoreCount()I
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    .line 318
    :cond_0
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    iget v0, v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_coreCount:I

    return v0
.end method

.method public static final getCPUName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    .line 336
    :cond_0
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    iget-object v0, v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUSpeedInMhz()I
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    invoke-direct {v0}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    .line 327
    :cond_0
    sget-object v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_cpuInfo:Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;

    iget v0, v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo$CPUInfo;->m_speedInMhz:I

    return v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDensityDPI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainActivityInstance()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, context:Landroid/app/Activity;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x78

    if-ne v2, v3, :cond_0

    .line 136
    const-string v2, "low"

    .line 144
    :goto_0
    return-object v2

    .line 137
    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_1

    .line 138
    const-string v2, "medium"

    goto :goto_0

    .line 139
    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_2

    .line 140
    const-string v2, "high"

    goto :goto_0

    .line 141
    :cond_2
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-ne v2, v3, :cond_3

    .line 142
    const-string v2, "xtrahigh"

    goto :goto_0

    .line 144
    :cond_3
    const-string v2, "unknown"

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceUniqueIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayDPI_X()F
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 252
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 253
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 254
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 255
    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    return v3
.end method

.method public static getDisplayDPI_Y()F
    .locals 4

    .prologue
    .line 260
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 261
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 262
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 263
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 264
    iget v3, v2, Landroid/util/DisplayMetrics;->ydpi:F

    return v3
.end method

.method public static getDisplayHeight()I
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 282
    .local v0, context:Landroid/content/Context;
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 283
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    return v2
.end method

.method public static getDisplayScale()F
    .locals 1

    .prologue
    .line 269
    const/high16 v0, 0x3f80

    return v0
.end method

.method public static getDisplayWidth()I
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 276
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    return v2
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMemorySizeinMB()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 245
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 246
    .local v0, memoryBytes:J
    div-long v2, v0, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public static getNetworkTypeAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v1

    .line 161
    .local v1, context:Landroid/content/Context;
    const-string v5, "connectivity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 162
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 163
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 164
    .local v3, mobile:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    const-string v5, "wwan"

    .line 175
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #mobile:Landroid/net/NetworkInfo;
    :goto_0
    return-object v5

    .line 167
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #mobile:Landroid/net/NetworkInfo;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 168
    .local v4, wifi:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    const-string v5, "wwan"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #mobile:Landroid/net/NetworkInfo;
    .end local v4           #wifi:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "bfsplatform"

    const-string v6, "BFSDeviceInfo.getNetworkTypeAsString"

    invoke-static {v5, v6, v2}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v5, "none"

    goto :goto_0
.end method

.method public static getScreenLayout()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v1

    .line 108
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    .local v0, con:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 110
    const-string v2, "small"

    .line 118
    :goto_0
    return-object v2

    .line 111
    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 112
    const-string v2, "normal"

    goto :goto_0

    .line 113
    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 114
    const-string v2, "large"

    goto :goto_0

    .line 115
    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 116
    const-string v2, "xtralarge"

    goto :goto_0

    .line 118
    :cond_3
    const-string v2, "unknown"

    goto :goto_0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsableDisplayHeight()I
    .locals 2

    .prologue
    .line 306
    sget v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 307
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->getDisplayHeight()I

    move-result v0

    sput v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayHeight:I

    .line 309
    :cond_0
    sget v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayHeight:I

    return v0
.end method

.method public static getUsableDisplayWidth()I
    .locals 2

    .prologue
    .line 298
    sget v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->getDisplayWidth()I

    move-result v0

    sput v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayWidth:I

    .line 301
    :cond_0
    sget v0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayWidth:I

    return v0
.end method

.method public static hasAccelerometer()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 181
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 182
    .local v0, context:Landroid/content/Context;
    const-string v5, "sensor"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 183
    .local v3, sensorManager:Landroid/hardware/SensorManager;
    if-eqz v3, :cond_0

    .line 184
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 192
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3           #sensorManager:Landroid/hardware/SensorManager;
    :goto_0
    return v4

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "bfsplatform"

    const-string v5, "BFSDeviceInfo.hasAccelerometer"

    invoke-static {v4, v5, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hasCompass()Z
    .locals 6

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 216
    .local v0, context:Landroid/content/Context;
    const-string v4, "sensor"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 217
    .local v3, sensorManager:Landroid/hardware/SensorManager;
    if-eqz v3, :cond_0

    .line 218
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 219
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    .line 220
    const/4 v4, 0x1

    .line 226
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3           #sensorManager:Landroid/hardware/SensorManager;
    :goto_0
    return v4

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "bfsplatform"

    const-string v5, "BFSDeviceInfo.hasCompass"

    invoke-static {v4, v5, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static hasGyroscope()Z
    .locals 6

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 199
    .local v0, context:Landroid/content/Context;
    const-string v4, "sensor"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 200
    .local v3, sensorManager:Landroid/hardware/SensorManager;
    if-eqz v3, :cond_0

    .line 201
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 202
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    .line 203
    const/4 v4, 0x1

    .line 209
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v3           #sensorManager:Landroid/hardware/SensorManager;
    :goto_0
    return v4

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "bfsplatform"

    const-string v5, "BFSDeviceInfo.hasGyroscope"

    invoke-static {v4, v5, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isConnectedToNetwork()Z
    .locals 2

    .prologue
    .line 70
    const-string v0, "none"

    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->getNetworkTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 12

    .prologue
    .line 77
    const/4 v6, 0x0

    .line 79
    .local v6, retVal:Ljava/lang/Boolean;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_0

    .line 81
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v2

    .line 82
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 84
    .local v1, con:Landroid/content/res/Configuration;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "isLayoutSizeAtLeast"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 85
    .local v5, mIsLayoutSizeAtLeast:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1           #con:Landroid/content/res/Configuration;
    .end local v2           #context:Landroid/content/Context;
    .end local v5           #mIsLayoutSizeAtLeast:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 92
    invoke-static {}, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->getScreenLayout()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, layout:Ljava/lang/String;
    new-instance v6, Ljava/lang/Boolean;

    .end local v6           #retVal:Ljava/lang/Boolean;
    const-string v7, "xtralarge"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    .line 96
    .end local v4           #layout:Ljava/lang/String;
    .restart local v6       #retVal:Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 86
    .restart local v1       #con:Landroid/content/res/Configuration;
    .restart local v2       #context:Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 87
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "bfsplatform"

    const-string v8, "BFSDeviceInfo.isTabletDevice()"

    invoke-static {v7, v8}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static locationServicesSupported()Z
    .locals 5

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Lcom/backflipstudios/android/engine/app/BFSRuntimeStore;->getMainApplicationInstance()Landroid/app/Application;

    move-result-object v0

    .line 233
    .local v0, context:Landroid/content/Context;
    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 234
    .local v2, locationManager:Landroid/location/LocationManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_0

    .line 235
    const/4 v3, 0x1

    .line 240
    .end local v2           #locationManager:Landroid/location/LocationManager;
    :goto_0
    return v3

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "bfsplatform"

    const-string v4, "BFSDeviceInfo.getNetworkTypeAsString"

    invoke-static {v3, v4, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setUsableDisplayHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 293
    sput p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayHeight:I

    .line 294
    return-void
.end method

.method public static setUsableDisplayWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 288
    sput p0, Lcom/backflipstudios/android/engine/platform/BFSDeviceInfo;->m_usableDisplayWidth:I

    .line 289
    return-void
.end method
