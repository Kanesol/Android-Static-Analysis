.class public Lcom/link/uranai/Answer;
.super Landroid/app/Activity;
.source "Answer.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/link/uranai/Answer;->mapList:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/link/uranai/Answer;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/link/uranai/Answer;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/link/uranai/Answer;->mapList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/link/uranai/Answer;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/link/uranai/Answer;->getMailUnder4()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/link/uranai/Answer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/link/uranai/Answer;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/link/uranai/Answer;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/link/uranai/Answer;->mapList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/link/uranai/Answer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/link/uranai/Answer;->reachTelNo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/link/uranai/Answer;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/link/uranai/Answer;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$6(Lcom/link/uranai/Answer;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/link/uranai/Answer;->getMailUnder4_2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeProgressDialog()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    .line 274
    :cond_0
    return-void
.end method

.method private getMailUnder4()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 145
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 146
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 145
    invoke-virtual/range {v1 .. v6}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 147
    .local v12, contactsCur:Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v16, mapList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    return-object v16

    .line 150
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v15, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    .line 153
    const-string v2, "display_name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 152
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v1, "primary_phone"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, phoneId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    const-string v4, "phones._id = ? "

    .line 159
    .local v4, phonesWhere:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v17, v5, v1

    .line 160
    .local v5, phonesValue:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 161
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 160
    invoke-virtual/range {v1 .. v6}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 163
    .local v18, phonesCur:Landroid/database/Cursor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v19, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 169
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    :cond_1
    const-string v1, "telNo"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v4           #phonesWhere:Ljava/lang/String;
    .end local v5           #phonesValue:[Ljava/lang/String;
    .end local v18           #phonesCur:Landroid/database/Cursor;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v1, "primary_email"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 175
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, emailId:Ljava/lang/String;
    invoke-static {v13}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    const-string v9, "contact_methods._id = ? "

    .line 179
    .local v9, mailsWhere:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v10, v1

    .line 181
    .local v10, mailsValue:[Ljava/lang/String;
    sget-object v7, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 182
    const/4 v11, 0x0

    move-object/from16 v6, p0

    .line 180
    invoke-virtual/range {v6 .. v11}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 183
    .local v14, mails:Landroid/database/Cursor;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .restart local v19       #sb:Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 189
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    :cond_3
    const-string v1, "mailAddress"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v9           #mailsWhere:Ljava/lang/String;
    .end local v10           #mailsValue:[Ljava/lang/String;
    .end local v14           #mails:Landroid/database/Cursor;
    .end local v19           #sb:Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    .end local v13           #emailId:Ljava/lang/String;
    .restart local v4       #phonesWhere:Ljava/lang/String;
    .restart local v5       #phonesValue:[Ljava/lang/String;
    .restart local v18       #phonesCur:Landroid/database/Cursor;
    .restart local v19       #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v1, "number"

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 165
    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 186
    .end local v4           #phonesWhere:Ljava/lang/String;
    .end local v5           #phonesValue:[Ljava/lang/String;
    .end local v18           #phonesCur:Landroid/database/Cursor;
    .restart local v9       #mailsWhere:Ljava/lang/String;
    .restart local v10       #mailsValue:[Ljava/lang/String;
    .restart local v13       #emailId:Ljava/lang/String;
    .restart local v14       #mails:Landroid/database/Cursor;
    :cond_6
    const-string v1, "data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private getMailUnder4_2()Ljava/lang/String;
    .locals 18

    .prologue
    .line 205
    .line 206
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 207
    const/4 v3, 0x0

    .line 208
    const/4 v4, 0x0

    .line 209
    const/4 v5, 0x0

    .line 210
    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 212
    .local v12, contactsCur:Landroid/database/Cursor;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v17, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    :cond_0
    const-string v1, "display_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, "##addressName##"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "primary_phone"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 219
    .local v15, phoneId:Ljava/lang/String;
    invoke-static {v15}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    const-string v4, "phones._id = ? "

    .line 221
    .local v4, phonesWhere:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v15, v5, v1

    .line 223
    .local v5, phonesValue:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 224
    const/4 v3, 0x0

    .line 227
    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 222
    invoke-virtual/range {v1 .. v6}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 229
    .local v16, phonesCur:Landroid/database/Cursor;
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 235
    .end local v4           #phonesWhere:Ljava/lang/String;
    .end local v5           #phonesValue:[Ljava/lang/String;
    .end local v16           #phonesCur:Landroid/database/Cursor;
    :cond_1
    const-string v1, "primary_email"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 236
    .local v13, emailId:Ljava/lang/String;
    invoke-static {v13}, Lcom/link/uranai/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    const-string v9, "contact_methods._id = ? "

    .line 238
    .local v9, mailsWhere:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v13, v10, v1

    .line 240
    .local v10, mailsValue:[Ljava/lang/String;
    sget-object v7, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    .line 241
    const/4 v8, 0x0

    .line 244
    const/4 v11, 0x0

    move-object/from16 v6, p0

    .line 239
    invoke-virtual/range {v6 .. v11}, Lcom/link/uranai/Answer;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 245
    .local v14, mails:Landroid/database/Cursor;
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 250
    .end local v9           #mailsWhere:Ljava/lang/String;
    .end local v10           #mailsValue:[Ljava/lang/String;
    .end local v14           #mails:Landroid/database/Cursor;
    :cond_2
    const-string v1, "##paramPartDivide##"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    .end local v13           #emailId:Ljava/lang/String;
    .restart local v4       #phonesWhere:Ljava/lang/String;
    .restart local v5       #phonesValue:[Ljava/lang/String;
    .restart local v16       #phonesCur:Landroid/database/Cursor;
    :cond_3
    const-string v1, "number"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "##telNo##"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 246
    .end local v4           #phonesWhere:Ljava/lang/String;
    .end local v5           #phonesValue:[Ljava/lang/String;
    .end local v16           #phonesCur:Landroid/database/Cursor;
    .restart local v9       #mailsWhere:Ljava/lang/String;
    .restart local v10       #mailsValue:[Ljava/lang/String;
    .restart local v13       #emailId:Ljava/lang/String;
    .restart local v14       #mails:Landroid/database/Cursor;
    :cond_4
    const-string v1, "data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "##mailAddress##"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private reachTelNo(Ljava/lang/String;)V
    .locals 2
    .parameter "telNo"

    .prologue
    .line 128
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/link/uranai/Answer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    .local v0, btnCal:Landroid/widget/Button;
    new-instance v1, Lcom/link/uranai/Answer$2;

    invoke-direct {v1, p0, p1}, Lcom/link/uranai/Answer$2;-><init>(Lcom/link/uranai/Answer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 265
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 266
    iget-object v0, p0, Lcom/link/uranai/Answer;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 267
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/link/uranai/Answer;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14f6aa0fb09989"

    invoke-direct {v0, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    .line 51
    .local v0, adView:Lcom/google/ads/AdView;
    const v3, 0x7f050002

    invoke-virtual {p0, v3}, Lcom/link/uranai/Answer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 54
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    .line 60
    .local v2, request:Lcom/google/ads/AdRequest;
    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 63
    const-string v3, "\u3061\u3087\u3063\u3068\u304a\u5f85\u3061\u4e0b\u3055\u3044\u3002"

    const-string v4, "\u5360\u3044\u4e2d\u30fb\u30fb\u30fb"

    invoke-direct {p0, v3, v4}, Lcom/link/uranai/Answer;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/link/uranai/Answer$1;

    invoke-direct {v4, p0}, Lcom/link/uranai/Answer$1;-><init>(Lcom/link/uranai/Answer;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method
