.class public interface abstract Lcom/flurry/android/SdkAdLogRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "{\"protocol\":\"SdkAdLogRequest\",\"namespace\":\"com.flurry.android\",\"types\":[{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]},{\"type\":\"record\",\"name\":\"SdkAdEvent\",\"fields\":[{\"name\":\"type\",\"type\":\"string\"},{\"name\":\"params\",\"type\":{\"type\":\"map\",\"values\":\"string\"}},{\"name\":\"timeOffset\",\"type\":\"long\"}]},{\"type\":\"record\",\"name\":\"SdkAdLog\",\"fields\":[{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adLogGUID\",\"type\":\"string\"},{\"name\":\"sdkAdEvents\",\"type\":{\"type\":\"array\",\"items\":\"SdkAdEvent\"}}]},{\"type\":\"record\",\"name\":\"SdkLogRequest\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":\"AdReportedId\"}},{\"name\":\"sdkAdLogs\",\"type\":{\"type\":\"array\",\"items\":\"SdkAdLog\"}},{\"name\":\"agentTimestamp\",\"type\":\"long\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false}]}],\"messages\":{}}"

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/SdkAdLogRequest;->PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;

    return-void
.end method
