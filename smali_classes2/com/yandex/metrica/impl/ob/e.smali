.class public final Lcom/yandex/metrica/impl/ob/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/e;->a:Lcom/yandex/metrica/impl/ob/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lcom/android/billingclient/api/SkuDetails;)J
    .locals 2

    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skuDetails.freeTrialPeriod"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->b()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method private final b(Lcom/android/billingclient/api/SkuDetails;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "skuDetails.freeTrialPeriod"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->c()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_1
    return v1
.end method

.method private final c(Lcom/android/billingclient/api/SkuDetails;)Lzb/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "skuDetails.freeTrialPeriod"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/android/billingclient/api/PurchaseHistoryRecord;Lcom/android/billingclient/api/SkuDetails;Lcom/android/billingclient/api/Purchase;)Lzb/d;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "purchasesHistoryRecord"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "skuDetails"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lzb/d;

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "skuDetails.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "type"

    .line 3
    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x360a33

    if-eq v5, v6, :cond_1

    const v6, 0x5fb1edc

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "inapp"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lzb/e;->a:Lzb/e;

    goto :goto_1

    :cond_1
    const-string v5, "subs"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lzb/e;->b:Lzb/e;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    sget-object v4, Lzb/e;->c:Lzb/e;

    .line 8
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->f()I

    move-result v6

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->e()J

    move-result-wide v7

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/android/billingclient/api/SkuDetails;)J

    move-result-wide v10

    .line 13
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/e;->c(Lcom/android/billingclient/api/SkuDetails;)Lzb/c;

    move-result-object v12

    .line 14
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/e;->b(Lcom/android/billingclient/api/SkuDetails;)I

    move-result v13

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/SkuDetails;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb/c;->a(Ljava/lang/String;)Lzb/c;

    move-result-object v14

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->g()Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/lang/String;

    move-result-object v16

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->d()J

    move-result-wide v17

    if-eqz p3, :cond_3

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->n()Z

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move/from16 v19, v1

    if-eqz p3, :cond_4

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "{}"

    :goto_3
    move-object/from16 v20, v1

    move-object v3, v2

    .line 21
    invoke-direct/range {v3 .. v20}, Lzb/d;-><init>(Lzb/e;Ljava/lang/String;IJLjava/lang/String;JLzb/c;ILzb/c;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    return-object v2
.end method
