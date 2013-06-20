.class public interface abstract Lcom/flurry/android/SdkAdLogResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "{\"protocol\":\"SdkAdLogResponse\",\"namespace\":\"com.flurry.android\",\"types\":[{\"type\":\"record\",\"name\":\"SdkLogResponse\",\"fields\":[{\"name\":\"result\",\"type\":\"string\"},{\"name\":\"errors\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}],\"messages\":{}}"

    invoke-static {v0}, Lcom/flurry/org/apache/avro/Protocol;->parse(Ljava/lang/String;)Lcom/flurry/org/apache/avro/Protocol;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/SdkAdLogResponse;->PROTOCOL:Lcom/flurry/org/apache/avro/Protocol;

    return-void
.end method
