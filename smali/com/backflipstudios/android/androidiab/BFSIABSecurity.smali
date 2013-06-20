.class Lcom/backflipstudios/android/androidiab/BFSIABSecurity;
.super Ljava/lang/Object;
.source "BFSIABSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom; = null

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->RANDOM:Ljava/security/SecureRandom;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->sKnownNonces:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 78
    sget-object v2, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 79
    .local v0, nonce:J
    sget-object v2, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "encodedPublicKey"

    .prologue
    .line 196
    :try_start_0
    invoke-static {p0}, Lcom/backflipstudios/android/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 197
    .local v0, decodedKey:[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 198
    .local v2, keyFactory:Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/backflipstudios/android/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 199
    .end local v0           #decodedKey:[B
    .end local v2           #keyFactory:Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 201
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 202
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 204
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v1

    .line 205
    .local v1, e:Lcom/backflipstudios/android/util/Base64DecoderException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v1}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .parameter "nonce"

    .prologue
    .line 88
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 84
    sget-object v0, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->sKnownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "publicKey"
    .parameter "signedData"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 223
    :try_start_0
    const-string v3, "SHA1withRSA"

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 224
    .local v1, sig:Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 226
    invoke-static {p2}, Lcom/backflipstudios/android/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.verify(): Signature verification failed."

    invoke-static {v3, v4}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/backflipstudios/android/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 240
    .end local v1           #sig:Ljava/security/Signature;
    :goto_0
    return v2

    .line 230
    .restart local v1       #sig:Ljava/security/Signature;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 231
    .end local v1           #sig:Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 234
    .local v0, e:Ljava/security/InvalidKeyException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 236
    .local v0, e:Ljava/security/SignatureException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 237
    .end local v0           #e:Ljava/security/SignatureException;
    :catch_3
    move-exception v0

    .line 238
    .local v0, e:Lcom/backflipstudios/android/util/Base64DecoderException;
    const-string v3, "android_iab"

    const-string v4, "BFSIABSecurity.generatePublicKey()"

    invoke-static {v3, v4, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 25
    .parameter "signedData"
    .parameter "signature"
    .parameter "base64EncodedPublicKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string v3, "android_iab"

    const-string v23, "BFSIABSecurity.verifyPurchase(): data is null"

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v20, 0x0

    .line 184
    :goto_0
    return-object v20

    .line 110
    :cond_0
    const/16 v22, 0x0

    .line 111
    .local v22, verified:Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    invoke-static/range {p2 .. p2}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v16

    .line 126
    .local v16, key:Ljava/security/PublicKey;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 127
    if-nez v22, :cond_1

    .line 128
    const-string v3, "android_iab"

    const-string v23, "BFSIABSecurity.verifyPurchase(): signature does not match data."

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v20, 0x0

    goto :goto_0

    .line 134
    .end local v16           #key:Ljava/security/PublicKey;
    :cond_1
    const/4 v15, 0x0

    .line 135
    .local v15, jTransactionsArray:Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 136
    .local v19, numTransactions:I
    const-wide/16 v17, 0x0

    .line 138
    .local v17, nonce:J
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v14, jObject:Lorg/json/JSONObject;
    const-string v3, "nonce"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 142
    const-string v3, "orders"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 143
    if-eqz v15, :cond_2

    .line 144
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 150
    :cond_2
    invoke-static/range {v17 .. v18}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->isNonceKnown(J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 151
    const-string v3, "android_iab"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BFSIABSecurity.verifyPurchase(): Nonce not found: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/backflipstudios/android/debug/BFSDebug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v20, 0x0

    goto :goto_0

    .line 146
    .end local v14           #jObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 147
    .local v11, e:Lorg/json/JSONException;
    const/16 v20, 0x0

    goto :goto_0

    .line 155
    .end local v11           #e:Lorg/json/JSONException;
    .restart local v14       #jObject:Lorg/json/JSONObject;
    :cond_3
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v20, purchases:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v12, v0, :cond_6

    .line 158
    :try_start_1
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 159
    .local v13, jElement:Lorg/json/JSONObject;
    const-string v3, "purchaseState"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 160
    .local v21, response:I
    invoke-static/range {v21 .. v21}, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->valueOf(I)Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    move-result-object v4

    .line 161
    .local v4, purchaseState:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    const-string v3, "productId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, productId:Ljava/lang/String;
    const-string v3, "purchaseTime"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 164
    .local v8, purchaseTime:J
    const-string v3, "orderId"

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, orderId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 166
    .local v5, notifyId:Ljava/lang/String;
    const-string v3, "notificationId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    const-string v3, "notificationId"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    :cond_4
    const-string v3, "developerPayload"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v13, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, developerPayload:Ljava/lang/String;
    sget-object v3, Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;->PURCHASED:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;

    if-ne v4, v3, :cond_5

    if-nez v22, :cond_5

    .line 157
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 176
    :cond_5
    new-instance v3, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;

    invoke-direct/range {v3 .. v10}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity$VerifiedPurchase;-><init>(Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 179
    .end local v4           #purchaseState:Lcom/backflipstudios/android/androidiab/BFSIABConsts$PurchaseState;
    .end local v5           #notifyId:Ljava/lang/String;
    .end local v6           #productId:Ljava/lang/String;
    .end local v7           #orderId:Ljava/lang/String;
    .end local v8           #purchaseTime:J
    .end local v10           #developerPayload:Ljava/lang/String;
    .end local v13           #jElement:Lorg/json/JSONObject;
    .end local v21           #response:I
    :catch_1
    move-exception v11

    .line 180
    .restart local v11       #e:Lorg/json/JSONException;
    const-string v3, "android_iab"

    const-string v23, "BFSIABSecurity.verifyPurchase()"

    move-object/from16 v0, v23

    invoke-static {v3, v0, v11}, Lcom/backflipstudios/android/debug/BFSDebug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 183
    .end local v11           #e:Lorg/json/JSONException;
    :cond_6
    invoke-static/range {v17 .. v18}, Lcom/backflipstudios/android/androidiab/BFSIABSecurity;->removeNonce(J)V

    goto/16 :goto_0
.end method
