.class public Lcom/flurry/android/AdRequest$Builder;
.super Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/org/apache/avro/data/RecordBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;",
        "Lcom/flurry/org/apache/avro/data/RecordBuilder",
        "<",
        "Lcom/flurry/android/AdRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/android/Location;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/flurry/android/AdViewContainer;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Lcom/flurry/android/TestAds;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/AdRequest$Builder;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 353
    sget-object v0, Lcom/flurry/android/AdRequest;->SCHEMA$:Lcom/flurry/org/apache/avro/Schema;

    invoke-direct {p0, v0}, Lcom/flurry/org/apache/avro/specific/SpecificRecordBuilderBase;-><init>(Lcom/flurry/org/apache/avro/Schema;)V

    .line 354
    return-void
.end method


# virtual methods
.method public build()Lcom/flurry/android/AdRequest;
    .locals 3

    .prologue
    .line 830
    :try_start_0
    new-instance v2, Lcom/flurry/android/AdRequest;

    invoke-direct {v2}, Lcom/flurry/android/AdRequest;-><init>()V

    .line 831
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->a:Ljava/lang/CharSequence;

    .line 832
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->b:Ljava/lang/CharSequence;

    .line 833
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->c:Ljava/lang/CharSequence;

    .line 834
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->d:J

    :goto_3
    iput-wide v0, v2, Lcom/flurry/android/AdRequest;->d:J

    .line 835
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->e:Ljava/util/List;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->e:Ljava/util/List;

    .line 836
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->f:Lcom/flurry/android/Location;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->f:Lcom/flurry/android/Location;

    .line 837
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->g:Z

    :goto_6
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->g:Z

    .line 838
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->h:Ljava/util/List;

    :goto_7
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->h:Ljava/util/List;

    .line 839
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->i:Lcom/flurry/android/AdViewContainer;

    :goto_8
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->i:Lcom/flurry/android/AdViewContainer;

    .line 840
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    :goto_9
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->j:Ljava/lang/CharSequence;

    .line 841
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    :goto_a
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->k:Ljava/lang/CharSequence;

    .line 842
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    :goto_b
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->l:Ljava/lang/CharSequence;

    .line 843
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    :goto_c
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->m:Ljava/lang/CharSequence;

    .line 844
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->n:Lcom/flurry/android/TestAds;

    :goto_d
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->n:Lcom/flurry/android/TestAds;

    .line 845
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->o:Ljava/util/Map;

    :goto_e
    iput-object v0, v2, Lcom/flurry/android/AdRequest;->o:Ljava/util/Map;

    .line 846
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->p:Z

    :goto_f
    iput-boolean v0, v2, Lcom/flurry/android/AdRequest;->p:Z

    .line 847
    return-object v2

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 832
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 833
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 834
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_3

    .line 835
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_4

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/Location;

    goto/16 :goto_5

    .line 837
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_6

    .line 838
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_7

    .line 839
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/AdViewContainer;

    goto/16 :goto_8

    .line 840
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 841
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 842
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 843
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 844
    :cond_d
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/TestAds;

    goto/16 :goto_d

    .line 845
    :cond_e
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto/16 :goto_e

    .line 846
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/AdRequest$Builder;->defaultValue(Lcom/flurry/org/apache/avro/Schema$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_f

    .line 848
    :catch_0
    move-exception v0

    .line 849
    new-instance v1, Lcom/flurry/org/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lcom/flurry/org/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->build()Lcom/flurry/android/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public clearAdReportedIds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->e:Ljava/util/List;

    .line 550
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 551
    return-object p0
.end method

.method public clearAdSpaceName()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    .line 501
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 502
    return-object p0
.end method

.method public clearAdViewContainer()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->i:Lcom/flurry/android/AdViewContainer;

    .line 649
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 650
    return-object p0
.end method

.method public clearAgentVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    .line 476
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 477
    return-object p0
.end method

.method public clearApiKey()Lcom/flurry/android/AdRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    .line 451
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 452
    return-object p0
.end method

.method public clearBindings()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->h:Ljava/util/List;

    .line 624
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 625
    return-object p0
.end method

.method public clearDevicePlatform()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    .line 749
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 750
    return-object p0
.end method

.method public clearKeywords()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 798
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->o:Ljava/util/Map;

    .line 799
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 800
    return-object p0
.end method

.method public clearLocale()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    .line 674
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 675
    return-object p0
.end method

.method public clearLocation()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->f:Lcom/flurry/android/Location;

    .line 575
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 576
    return-object p0
.end method

.method public clearOsVersion()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    .line 724
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 725
    return-object p0
.end method

.method public clearRefresh()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 824
    return-object p0
.end method

.method public clearSessionId()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 526
    return-object p0
.end method

.method public clearTestAds()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->n:Lcom/flurry/android/TestAds;

    .line 774
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 775
    return-object p0
.end method

.method public clearTestDevice()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 600
    return-object p0
.end method

.method public clearTimezone()Lcom/flurry/android/AdRequest$Builder;
    .locals 3

    .prologue
    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    .line 699
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 700
    return-object p0
.end method

.method public getAdReportedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->e:Ljava/util/List;

    return-object v0
.end method

.method public getAdSpaceName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAdViewContainer()Lcom/flurry/android/AdViewContainer;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->i:Lcom/flurry/android/AdViewContainer;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getApiKey()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->h:Ljava/util/List;

    return-object v0
.end method

.method public getDevicePlatform()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->o:Ljava/util/Map;

    return-object v0
.end method

.method public getLocale()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLocation()Lcom/flurry/android/Location;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->f:Lcom/flurry/android/Location;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRefresh()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->p:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/flurry/android/AdRequest$Builder;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTestAds()Lcom/flurry/android/TestAds;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->n:Lcom/flurry/android/TestAds;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/flurry/android/AdRequest$Builder;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTimezone()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/flurry/android/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasAdReportedIds()Z
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdSpaceName()Z
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAdViewContainer()Z
    .locals 2

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasAgentVersion()Z
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasApiKey()Z
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasBindings()Z
    .locals 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasDevicePlatform()Z
    .locals 2

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasKeywords()Z
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocale()Z
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasOsVersion()Z
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasRefresh()Z
    .locals 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasSessionId()Z
    .locals 2

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestAds()Z
    .locals 2

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTestDevice()Z
    .locals 2

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    return v0
.end method

.method public hasTimezone()Z
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    return v0
.end method

.method public setAdReportedIds(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/AdReportedId;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 536
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 537
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->e:Ljava/util/List;

    .line 538
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 539
    return-object p0
.end method

.method public setAdSpaceName(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 487
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 488
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    .line 489
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 490
    return-object p0
.end method

.method public setAdViewContainer(Lcom/flurry/android/AdViewContainer;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 635
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 636
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->i:Lcom/flurry/android/AdViewContainer;

    .line 637
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 638
    return-object p0
.end method

.method public setAgentVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 462
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 463
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    .line 464
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 465
    return-object p0
.end method

.method public setApiKey(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 437
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 438
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    .line 439
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 440
    return-object p0
.end method

.method public setBindings(Ljava/util/List;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 610
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 611
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->h:Ljava/util/List;

    .line 612
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 613
    return-object p0
.end method

.method public setDevicePlatform(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 735
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 736
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    .line 737
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 738
    return-object p0
.end method

.method public setKeywords(Ljava/util/Map;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0xe

    .line 785
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 786
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->o:Ljava/util/Map;

    .line 787
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 788
    return-object p0
.end method

.method public setLocale(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x9

    .line 660
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 661
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    .line 662
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 663
    return-object p0
.end method

.method public setLocation(Lcom/flurry/android/Location;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 561
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 562
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->f:Lcom/flurry/android/Location;

    .line 563
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 564
    return-object p0
.end method

.method public setOsVersion(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xb

    .line 710
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 711
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    .line 712
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 713
    return-object p0
.end method

.method public setRefresh(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xf

    .line 810
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 811
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->p:Z

    .line 812
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 813
    return-object p0
.end method

.method public setSessionId(J)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 512
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 513
    iput-wide p1, p0, Lcom/flurry/android/AdRequest$Builder;->d:J

    .line 514
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 515
    return-object p0
.end method

.method public setTestAds(Lcom/flurry/android/TestAds;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xd

    .line 760
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 761
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->n:Lcom/flurry/android/TestAds;

    .line 762
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 763
    return-object p0
.end method

.method public setTestDevice(Z)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x6

    .line 586
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 587
    iput-boolean p1, p0, Lcom/flurry/android/AdRequest$Builder;->g:Z

    .line 588
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 589
    return-object p0
.end method

.method public setTimezone(Ljava/lang/CharSequence;)Lcom/flurry/android/AdRequest$Builder;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 685
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fields()[Lcom/flurry/org/apache/avro/Schema$Field;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/AdRequest$Builder;->validate(Lcom/flurry/org/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 686
    iput-object p1, p0, Lcom/flurry/android/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    .line 687
    invoke-virtual {p0}, Lcom/flurry/android/AdRequest$Builder;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 688
    return-object p0
.end method
