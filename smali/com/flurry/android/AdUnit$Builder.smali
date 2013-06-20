.class public Lcom/flurry/android/AdUnit$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/flurry/android/AdUnit;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 126
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdUnit;
    .locals 3

    .prologue
    .line 255
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdUnit;

    invoke-direct {v2}, Lcom/flurry/android/AdUnit;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->a:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->a:Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->b:J

    :goto_1
    iput-wide v0, v2, Lcom/flurry/android/AdUnit;->b:J

    .line 258
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->c:Ljava/util/List;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdUnit;->c:Ljava/util/List;

    .line 259
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->d:I

    :goto_3
    iput v0, v2, Lcom/flurry/android/AdUnit;->d:I

    .line 260
    return-object v2

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdUnit$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_3

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->build()Lcom/flurry/android/AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public clearAdFrames()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->c:Ljava/util/List;

    .line 224
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 225
    return-object p0
.end method

.method public clearAdSpace()Lcom/flurry/android/AdUnit$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->a:Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 176
    return-object p0
.end method

.method public clearCombinable()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 249
    return-object p0
.end method

.method public clearExpiration()Lcom/flurry/android/AdUnit$Builder;
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 200
    return-object p0
.end method

.method public getAdFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->c:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpace()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flurry/android/AdUnit$Builder;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCombinable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/flurry/android/AdUnit$Builder;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/flurry/android/AdUnit$Builder;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hasAdFrames()Z
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpace()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasCombinable()Z
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasExpiration()Z
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdFrames(Ljava/util/List;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdFrame;",
            ">;)",
            "Lcom/flurry/android/AdUnit$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 210
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 211
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->c:Ljava/util/List;

    .line 212
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 213
    return-object p0
.end method

.method public setAdSpace(Ljava/lang/CharSequence;)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 162
    iput-object p1, p0, Lcom/flurry/android/AdUnit$Builder;->a:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 164
    return-object p0
.end method

.method public setCombinable(I)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 235
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 236
    iput p1, p0, Lcom/flurry/android/AdUnit$Builder;->d:I

    .line 237
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 238
    return-object p0
.end method

.method public setExpiration(J)Lcom/flurry/android/AdUnit$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdUnit$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 187
    iput-wide p1, p0, Lcom/flurry/android/AdUnit$Builder;->b:J

    .line 188
    invoke-virtual {p0}, Lcom/flurry/android/AdUnit$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v2, v0, v2

    .line 189
    return-object p0
.end method
