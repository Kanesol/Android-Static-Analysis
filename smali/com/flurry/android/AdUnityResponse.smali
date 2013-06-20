.class public interface abstract Lcom/flurry/android/AdUnityResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "{\"protocol\":\"AdUnityResponse\",\"namespace\":\"com.flurry.android\",\"types\":[{\"type\":\"record\",\"name\":\"Callback\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]},{\"type\":\"record\",\"name\":\"AdSpaceLayout\",\"fields\":[{\"name\":\"adWidth\",\"type\":\"int\"},{\"name\":\"adHeight\",\"type\":\"int\"},{\"name\":\"fix\",\"type\":\"string\"},{\"name\":\"format\",\"type\":\"string\"},{\"name\":\"alignment\",\"type\":\"string\"}]},{\"type\":\"record\",\"name\":\"AdFrame\",\"fields\":[{\"name\":\"binding\",\"type\":\"int\"},{\"name\":\"display\",\"type\":\"string\"},{\"name\":\"content\",\"type\":\"string\"},{\"name\":\"adSpaceLayout\",\"type\":\"AdSpaceLayout\"},{\"name\":\"callbacks\",\"type\":{\"type\":\"array\",\"items\":\"Callback\"}},{\"name\":\"adGuid\",\"type\":\"string\"}]},{\"type\":\"record\",\"name\":\"AdUnit\",\"fields\":[{\"name\":\"adSpace\",\"type\":\"string\"},{\"name\":\"expiration\",\"type\":\"long\"},{\"name\":\"adFrames\",\"type\":{\"type\":\"array\",\"items\":\"AdFrame\"}},{\"name\":\"combinable\",\"type\":\"int\",\"default\":0}]},{\"type\":\"record\",\"name\":\"AdResponse\",\"fields\":[{\"name\":\"adUnits\",\"type\":{\"type\":\"array\",\"items\":\"AdUnit\"}},{\"name\":\"errors\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]}]}],\"messages\":{}}"

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/AdUnityResponse;->PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;

    return-void
.end method
