.class public Lcom/yandex/metrica/impl/ob/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/P1$b;,
        Lcom/yandex/metrica/impl/ob/P1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/L3;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/metrica/impl/ob/Ig;

.field private d:Lcom/yandex/metrica/impl/ob/qf;

.field private final e:Lcom/yandex/metrica/impl/ob/L7;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Lcom/yandex/metrica/impl/ob/P1$b;

.field private final j:Lcom/yandex/metrica/impl/ob/fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/fn<",
            "[B>;"
        }
    .end annotation
.end field

.field private final k:Lcom/yandex/metrica/impl/ob/cm;

.field private final l:Lcom/yandex/metrica/impl/ob/b8;

.field private final m:Lcom/yandex/metrica/impl/ob/M0;

.field private final n:Lcom/yandex/metrica/impl/ob/Qg;

.field private final o:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

.field private final p:Lcom/yandex/metrica/impl/ob/d1;

.field private final q:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

.field private final r:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

.field private final s:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

.field private t:I


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/cm;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 13

    .line 5
    new-instance v7, Lcom/yandex/metrica/impl/ob/Tm;

    const v0, 0xfa000

    const-string v1, "event value in ReportTask"

    move-object/from16 v2, p8

    invoke-direct {v7, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/Tm;-><init>(ILjava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 6
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p7

    move-object v4, p2

    move-object/from16 v5, p9

    move-object/from16 v6, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    .line 7
    invoke-direct/range {v0 .. v12}, Lcom/yandex/metrica/impl/ob/P1;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/cm;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/impl/ob/Tm;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->i()Lcom/yandex/metrica/impl/ob/L7;

    move-result-object v7

    .line 2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->q()Lcom/yandex/metrica/impl/ob/cm;

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->x()Lcom/yandex/metrica/impl/ob/b8;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    .line 4
    invoke-direct/range {v0 .. v10}, Lcom/yandex/metrica/impl/ob/P1;-><init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/cm;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/impl/ob/cm;Lcom/yandex/metrica/impl/ob/L7;Lcom/yandex/metrica/impl/ob/Qg;Lcom/yandex/metrica/impl/ob/b8;Lcom/yandex/metrica/impl/ob/d1;Lcom/yandex/metrica/impl/ob/Tm;Lcom/yandex/metrica/impl/ob/M0;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 8

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->b:Ljava/util/Map;

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/yandex/metrica/impl/ob/P1;->g:I

    const/4 v1, -0x1

    .line 11
    iput v1, v0, Lcom/yandex/metrica/impl/ob/P1;->h:I

    .line 12
    new-instance v1, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    new-instance v4, Lcom/yandex/metrica/impl/ob/Ql;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ql;-><init>()V

    new-instance v7, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;

    invoke-direct {v7}, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;-><init>()V

    move-object v2, v1

    move-object/from16 v3, p12

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;Lcom/yandex/metrica/networktasks/api/Compressor;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;)V

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->s:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    move-object v1, p4

    .line 13
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->n:Lcom/yandex/metrica/impl/ob/Qg;

    move-object v1, p1

    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    move-object v1, p3

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->e:Lcom/yandex/metrica/impl/ob/L7;

    move-object v1, p2

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->k:Lcom/yandex/metrica/impl/ob/cm;

    move-object v1, p7

    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->j:Lcom/yandex/metrica/impl/ob/fn;

    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->l:Lcom/yandex/metrica/impl/ob/b8;

    move-object v1, p6

    .line 19
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->p:Lcom/yandex/metrica/impl/ob/d1;

    move-object/from16 v1, p8

    .line 20
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->m:Lcom/yandex/metrica/impl/ob/M0;

    move-object/from16 v1, p10

    .line 21
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->q:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    move-object/from16 v1, p11

    .line 22
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->r:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    move-object/from16 v1, p9

    .line 23
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/P1;->o:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/P1;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/P1;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yandex/metrica/impl/ob/P1;->g:I

    return v0
.end method

.method private a(Z)V
    .locals 10

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->l:Lcom/yandex/metrica/impl/ob/b8;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/P1;->t:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b8;->c(I)V

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->d:Lcom/yandex/metrica/impl/ob/qf;

    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 14
    :try_start_0
    aget-object v2, v0, v1

    .line 15
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/P1;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 16
    iget-object v3, v2, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    iget v3, v3, Lcom/yandex/metrica/impl/ob/qf$d$b;->c:I

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/J1;->a(I)Lcom/yandex/metrica/impl/ob/f6;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/P1;->e:Lcom/yandex/metrica/impl/ob/L7;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result v7

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    array-length v8, v2

    move v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/L7;->a(JIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/P1;->e:Lcom/yandex/metrica/impl/ob/L7;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->v()Lcom/yandex/metrica/impl/ob/b6;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b6;->a()J

    move-result-wide v0

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/L7;->a(J)I

    return-void
.end method

.method private a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/impl/ob/qf$a;
    .locals 5

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/qf$a;

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$a;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$a;-><init>()V

    .line 8
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/qf$a;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/qf$a;->b:Ljava/lang/String;

    .line 10
    aput-object v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(JLcom/yandex/metrica/impl/ob/qf$d$b;Lcom/yandex/metrica/impl/ob/Lg;Ljava/util/List;I)Lcom/yandex/metrica/impl/ob/P1$a;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/yandex/metrica/impl/ob/qf$d$b;",
            "Lcom/yandex/metrica/impl/ob/Lg;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lcom/yandex/metrica/impl/ob/P1$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p5

    .line 21
    new-instance v5, Lcom/yandex/metrica/impl/ob/qf$d;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/qf$d;-><init>()V

    .line 22
    iput-wide v2, v5, Lcom/yandex/metrica/impl/ob/qf$d;->a:J

    .line 23
    iput-object v0, v5, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 24
    iget v0, v0, Lcom/yandex/metrica/impl/ob/qf$d$b;->c:I

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/J1;->a(I)Lcom/yandex/metrica/impl/ob/f6;

    move-result-object v0

    .line 25
    :try_start_0
    iget-object v7, v1, Lcom/yandex/metrica/impl/ob/P1;->e:Lcom/yandex/metrica/impl/ob/L7;

    invoke-virtual {v7, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/L7;->b(JLcom/yandex/metrica/impl/ob/f6;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v2, :cond_f

    .line 26
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 27
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_e

    .line 28
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 29
    :try_start_2
    invoke-static {v2, v9}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :catchall_0
    :try_start_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/qe;

    invoke-direct {v0, v9}, Lcom/yandex/metrica/impl/ob/qe;-><init>(Landroid/content/ContentValues;)V

    .line 31
    iget-object v10, v0, Lcom/yandex/metrica/impl/ob/qe;->j:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {v10}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/re;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v11, p4

    :try_start_4
    invoke-virtual {v10, v0, v11}, Lcom/yandex/metrica/impl/ob/re;->a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)Lcom/yandex/metrica/impl/ob/qf$d$a;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v11, p4

    .line 32
    :goto_1
    :try_start_5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_d

    .line 33
    new-instance v10, Lcom/yandex/metrica/impl/ob/s$a;

    const-string v12, "app_environment"

    .line 34
    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v12, :cond_0

    const-string v12, ""

    :cond_0
    :try_start_6
    const-string v13, "app_environment_revision"

    .line 35
    invoke-virtual {v9, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v13, 0x0

    .line 36
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    if-nez v9, :cond_1

    move-object v9, v13

    .line 37
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-direct {v10, v12, v13, v14}, Lcom/yandex/metrica/impl/ob/s$a;-><init>(Ljava/lang/String;J)V

    const/4 v9, 0x1

    if-nez v7, :cond_5

    .line 38
    iget v7, v1, Lcom/yandex/metrica/impl/ob/P1;->h:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-gez v7, :cond_4

    .line 39
    :try_start_7
    new-instance v7, Lorg/json/JSONObject;

    iget-object v12, v10, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-direct {v1, v7}, Lcom/yandex/metrica/impl/ob/P1;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/impl/ob/qf$a;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 41
    array-length v12, v7

    move v13, v8

    move v14, v13

    :goto_3
    if-ge v13, v12, :cond_3

    aget-object v15, v7, v13

    const/4 v6, 0x7

    .line 42
    invoke-static {v6, v15}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/2addr v14, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :catchall_3
    :cond_2
    move v14, v8

    .line 43
    :cond_3
    :try_start_8
    iput v14, v1, Lcom/yandex/metrica/impl/ob/P1;->h:I

    .line 44
    iget v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    add-int/2addr v6, v14

    iput v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    :cond_4
    move-object v7, v10

    goto :goto_4

    .line 45
    :cond_5
    invoke-virtual {v7, v10}, Lcom/yandex/metrica/impl/ob/s$a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move v8, v9

    goto :goto_9

    .line 46
    :cond_6
    :goto_4
    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/P1;->j:Lcom/yandex/metrica/impl/ob/fn;

    iget-object v10, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    invoke-interface {v6, v10}, Lcom/yandex/metrica/impl/ob/fn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 47
    iget-object v10, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    if-eq v10, v6, :cond_9

    .line 48
    iget v12, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    if-nez v10, :cond_7

    move v10, v8

    goto :goto_5

    .line 49
    :cond_7
    array-length v10, v10

    :goto_5
    if-nez v6, :cond_8

    move v13, v8

    goto :goto_6

    :cond_8
    array-length v13, v6

    :goto_6
    sub-int/2addr v10, v13

    add-int/2addr v12, v10

    .line 50
    iput v12, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 51
    iput-object v6, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 52
    :cond_9
    iget v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    const/4 v10, 0x3

    invoke-static {v10, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    move-result v10

    add-int/2addr v6, v10

    iput v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez p6, :cond_a

    move v6, v9

    goto :goto_7

    :cond_a
    move v6, v8

    :goto_7
    if-eqz v6, :cond_b

    .line 54
    iget v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    const/high16 v10, 0x100000

    if-lt v6, v10, :cond_c

    goto :goto_8

    .line 55
    :cond_b
    iget v6, v1, Lcom/yandex/metrica/impl/ob/P1;->g:I

    const v10, 0x3d400

    if-lt v6, v10, :cond_c

    goto :goto_8

    :cond_c
    move v9, v8

    :goto_8
    if-eqz v9, :cond_d

    goto :goto_9

    .line 56
    :cond_d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57
    :cond_e
    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 58
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/qf$d$a;

    iput-object v0, v5, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/P1$a;

    invoke-direct {v0, v5, v7, v8}, Lcom/yandex/metrica/impl/ob/P1$a;-><init>(Lcom/yandex/metrica/impl/ob/qf$d;Lcom/yandex/metrica/impl/ob/s$a;Z)V

    move-object v6, v0

    goto :goto_a

    .line 60
    :cond_f
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/P1;->m:Lcom/yandex/metrica/impl/ob/M0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const-string v3, "protobuf_serialization_error"

    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no reports cursor for session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/yandex/metrica/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_10
    const/4 v6, 0x0

    .line 61
    :goto_a
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    .line 62
    :goto_b
    :try_start_a
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 63
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    const/4 v6, 0x0

    :goto_c
    return-object v6

    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 64
    throw v3
.end method

.method public description()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ReportTask_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/L3;->e()Lcom/yandex/metrica/impl/ob/I3;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/I3;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->o:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->q:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->r:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->m()Lcom/yandex/metrica/impl/ob/Lg;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->q()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public onCreateTask()Z
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const-string v9, "protobuf_serialization_error"

    .line 4
    .line 5
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->i()Lcom/yandex/metrica/impl/ob/L7;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L7;->b()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return v10

    .line 23
    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/content/ContentValues;

    .line 28
    .line 29
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->b:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    .line 54
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/P1;->b:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string v1, "report_request_parameters"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/Tl$a;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ig;

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Ig;-><init>(Lcom/yandex/metrica/impl/ob/Tl$a;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 95
    .line 96
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->n:Lcom/yandex/metrica/impl/ob/Qg;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Lcom/yandex/metrica/impl/ob/Ig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ig;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ig;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 108
    .line 109
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->n:Lcom/yandex/metrica/impl/ob/Qg;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Lcom/yandex/metrica/impl/ob/Ig;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Ig;

    .line 116
    .line 117
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Ig;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 121
    .line 122
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->n:Lcom/yandex/metrica/impl/ob/Qg;

    .line 123
    .line 124
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Qg;->a(Lcom/yandex/metrica/impl/ob/Ig;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->p:Lcom/yandex/metrica/impl/ob/d1;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d1;->a()Lcom/yandex/metrica/impl/ob/Lg;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Lg;->D()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-static {v12}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_3

    .line 142
    .line 143
    return v10

    .line 144
    :cond_3
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->o:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 145
    .line 146
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Lg;->M()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->f(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Lg;->S()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_13

    .line 158
    .line 159
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->o:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->b()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    goto/16 :goto_f

    .line 172
    .line 173
    :cond_4
    const/4 v1, 0x0

    .line 174
    iput-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->f:Ljava/util/List;

    .line 175
    .line 176
    new-instance v13, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v14, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    new-instance v2, Lorg/json/JSONObject;

    .line 187
    .line 188
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .line 190
    .line 191
    new-instance v15, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    const/4 v7, 0x1

    .line 197
    :try_start_1
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->e:Lcom/yandex/metrica/impl/ob/L7;

    .line 198
    .line 199
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/P1;->b:Ljava/util/Map;

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/L7;->a(Ljava/util/Map;)Landroid/database/Cursor;

    .line 202
    .line 203
    .line 204
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 205
    if-eqz v6, :cond_e

    .line 206
    .line 207
    move-object v0, v1

    .line 208
    move-object/from16 v16, v2

    .line 209
    .line 210
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_d

    .line 215
    .line 216
    new-instance v1, Landroid/content/ContentValues;

    .line 217
    .line 218
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 219
    .line 220
    .line 221
    :try_start_3
    invoke-static {v6, v1}, Lcom/yandex/metrica/impl/ob/b;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    .line 223
    .line 224
    :catchall_1
    :try_start_4
    const-string v2, "id"

    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 230
    if-nez v5, :cond_5

    .line 231
    .line 232
    :try_start_5
    iget-object v2, v8, Lcom/yandex/metrica/impl/ob/P1;->m:Lcom/yandex/metrica/impl/ob/M0;

    .line 233
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v4, "no session_id in values: "

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-interface {v2, v9, v1}, Lcom/yandex/metrica/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :catchall_2
    move-exception v0

    .line 260
    move-object v1, v6

    .line 261
    move/from16 v19, v7

    .line 262
    .line 263
    move-object/from16 v2, v16

    .line 264
    .line 265
    goto/16 :goto_b

    .line 266
    .line 267
    :cond_5
    :try_start_6
    const-string v2, "type"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    sget-object v3, Lcom/yandex/metrica/impl/ob/f6;->b:Lcom/yandex/metrica/impl/ob/f6;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 274
    .line 275
    if-eqz v2, :cond_7

    .line 276
    .line 277
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-eqz v2, :cond_7

    .line 282
    .line 283
    if-eq v2, v7, :cond_6

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_6
    sget-object v3, Lcom/yandex/metrica/impl/ob/f6;->c:Lcom/yandex/metrica/impl/ob/f6;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 287
    .line 288
    :cond_7
    :goto_3
    :try_start_8
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/J1;->a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/qf$f;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/f6;)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Eg;->k()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    new-instance v4, Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 301
    .line 302
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/qf$d$b;-><init>()V

    .line 303
    .line 304
    .line 305
    iput-object v1, v4, Lcom/yandex/metrica/impl/ob/qf$d$b;->a:Lcom/yandex/metrica/impl/ob/qf$f;

    .line 306
    .line 307
    iput-object v3, v4, Lcom/yandex/metrica/impl/ob/qf$d$b;->b:Ljava/lang/String;

    .line 308
    .line 309
    iput v2, v4, Lcom/yandex/metrica/impl/ob/qf$d$b;->c:I

    .line 310
    .line 311
    iget v1, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 312
    .line 313
    const-wide v2, 0x7fffffffffffffffL

    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    invoke-static {v7, v2, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    add-int/2addr v1, v2

    .line 323
    iput v1, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 324
    .line 325
    const/4 v2, 0x2

    .line 326
    invoke-static {v2, v4}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    add-int/2addr v1, v2

    .line 331
    iput v1, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 332
    .line 333
    const v2, 0x3d400

    .line 334
    .line 335
    .line 336
    if-lt v1, v2, :cond_8

    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 340
    .line 341
    .line 342
    move-result-wide v2

    .line 343
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 344
    .line 345
    .line 346
    move-result v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 347
    move-object/from16 v1, p0

    .line 348
    .line 349
    move-object v10, v5

    .line 350
    move-object v5, v11

    .line 351
    move-object/from16 v18, v6

    .line 352
    .line 353
    move-object v6, v15

    .line 354
    move/from16 v19, v7

    .line 355
    .line 356
    move/from16 v7, v17

    .line 357
    .line 358
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/yandex/metrica/impl/ob/P1;->a(JLcom/yandex/metrica/impl/ob/qf$d$b;Lcom/yandex/metrica/impl/ob/Lg;Ljava/util/List;I)Lcom/yandex/metrica/impl/ob/P1$a;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    if-eqz v1, :cond_c

    .line 363
    .line 364
    if-nez v0, :cond_9

    .line 365
    .line 366
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/P1$a;->b:Lcom/yandex/metrica/impl/ob/s$a;

    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_9
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/P1$a;->b:Lcom/yandex/metrica/impl/ob/s$a;

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/s$a;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-nez v2, :cond_a

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_a
    :goto_4
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/P1$a;->a:Lcom/yandex/metrica/impl/ob/qf$d;

    .line 382
    .line 383
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/P1$a;->b:Lcom/yandex/metrica/impl/ob/s$a;

    .line 387
    .line 388
    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 391
    .line 392
    .line 393
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 394
    if-nez v2, :cond_b

    .line 395
    .line 396
    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    .line 397
    .line 398
    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/P1$a;->b:Lcom/yandex/metrica/impl/ob/s$a;

    .line 399
    .line 400
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/s$a;->a:Ljava/lang/String;

    .line 401
    .line 402
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 403
    .line 404
    .line 405
    move-object/from16 v16, v2

    .line 406
    .line 407
    :catchall_3
    :cond_b
    :try_start_b
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/P1$a;->c:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 408
    .line 409
    if-eqz v1, :cond_c

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :catchall_4
    move-exception v0

    .line 413
    move-object/from16 v6, v18

    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_c
    move-object/from16 v6, v18

    .line 417
    .line 418
    move/from16 v7, v19

    .line 419
    .line 420
    const/4 v10, 0x0

    .line 421
    goto/16 :goto_2

    .line 422
    .line 423
    :catchall_5
    move-exception v0

    .line 424
    goto :goto_7

    .line 425
    :cond_d
    :goto_5
    move-object/from16 v18, v6

    .line 426
    .line 427
    move/from16 v19, v7

    .line 428
    .line 429
    :goto_6
    move-object/from16 v2, v16

    .line 430
    .line 431
    goto :goto_9

    .line 432
    :catchall_6
    move-exception v0

    .line 433
    move-object/from16 v18, v6

    .line 434
    .line 435
    move/from16 v19, v7

    .line 436
    .line 437
    :goto_7
    move-object/from16 v2, v16

    .line 438
    .line 439
    :goto_8
    move-object/from16 v1, v18

    .line 440
    .line 441
    goto :goto_b

    .line 442
    :cond_e
    move-object/from16 v18, v6

    .line 443
    .line 444
    move/from16 v19, v7

    .line 445
    .line 446
    :try_start_c
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->m:Lcom/yandex/metrica/impl/ob/M0;

    .line 447
    .line 448
    const-string v1, "no sessions cursor"

    .line 449
    .line 450
    invoke-interface {v0, v9, v1}, Lcom/yandex/metrica/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 451
    .line 452
    .line 453
    :goto_9
    move-object/from16 v16, v2

    .line 454
    .line 455
    :goto_a
    invoke-static/range {v18 .. v18}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 456
    .line 457
    .line 458
    goto :goto_d

    .line 459
    :catchall_7
    move-exception v0

    .line 460
    goto :goto_8

    .line 461
    :catchall_8
    move-exception v0

    .line 462
    move/from16 v19, v7

    .line 463
    .line 464
    :goto_b
    move-object v6, v1

    .line 465
    move-object/from16 v16, v2

    .line 466
    .line 467
    :goto_c
    :try_start_d
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 468
    .line 469
    .line 470
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 471
    .line 472
    .line 473
    :goto_d
    move-object/from16 v0, v16

    .line 474
    .line 475
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    if-eqz v2, :cond_f

    .line 484
    .line 485
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    check-cast v2, Ljava/lang/Throwable;

    .line 490
    .line 491
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/P1;->m:Lcom/yandex/metrica/impl/ob/M0;

    .line 492
    .line 493
    invoke-interface {v3, v9, v2}, Lcom/yandex/metrica/IReporter;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    .line 495
    .line 496
    goto :goto_e

    .line 497
    :cond_f
    new-instance v1, Lcom/yandex/metrica/impl/ob/P1$b;

    .line 498
    .line 499
    invoke-direct {v1, v13, v14, v0}, Lcom/yandex/metrica/impl/ob/P1$b;-><init>(Ljava/util/List;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 500
    .line 501
    .line 502
    iput-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->i:Lcom/yandex/metrica/impl/ob/P1$b;

    .line 503
    .line 504
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-eqz v0, :cond_10

    .line 509
    .line 510
    const/4 v1, 0x0

    .line 511
    return v1

    .line 512
    :cond_10
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->l:Lcom/yandex/metrica/impl/ob/b8;

    .line 513
    .line 514
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b8;->g()I

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    .line 520
    iput v0, v8, Lcom/yandex/metrica/impl/ob/P1;->t:I

    .line 521
    .line 522
    iget-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->n:Lcom/yandex/metrica/impl/ob/Qg;

    .line 523
    .line 524
    int-to-long v2, v0

    .line 525
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/Qg;->a(J)V

    .line 526
    .line 527
    .line 528
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->i:Lcom/yandex/metrica/impl/ob/P1$b;

    .line 529
    .line 530
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf;

    .line 531
    .line 532
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf;-><init>()V

    .line 533
    .line 534
    .line 535
    new-instance v2, Lcom/yandex/metrica/impl/ob/qf$c;

    .line 536
    .line 537
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/qf$c;-><init>()V

    .line 538
    .line 539
    .line 540
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/P1;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 541
    .line 542
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Ig;->b:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 549
    .line 550
    .line 551
    move-result v5

    .line 552
    if-eqz v5, :cond_11

    .line 553
    .line 554
    move-object v3, v4

    .line 555
    :cond_11
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 556
    .line 557
    iget-object v3, v8, Lcom/yandex/metrica/impl/ob/P1;->c:Lcom/yandex/metrica/impl/ob/Ig;

    .line 558
    .line 559
    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/Ig;->a:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    .line 567
    .line 568
    move-result v5

    .line 569
    if-eqz v5, :cond_12

    .line 570
    .line 571
    move-object v3, v4

    .line 572
    :cond_12
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 573
    .line 574
    iget v3, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 575
    .line 576
    const/4 v4, 0x4

    .line 577
    invoke-static {v4, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    add-int/2addr v3, v4

    .line 582
    iput v3, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 583
    .line 584
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/qf;->b:Lcom/yandex/metrica/impl/ob/qf$c;

    .line 585
    .line 586
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->v()Lcom/yandex/metrica/impl/ob/Xj;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    new-instance v3, Lcom/yandex/metrica/impl/ob/O1;

    .line 595
    .line 596
    invoke-direct {v3, v8, v1}, Lcom/yandex/metrica/impl/ob/O1;-><init>(Lcom/yandex/metrica/impl/ob/P1;Lcom/yandex/metrica/impl/ob/qf;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/Xj;->a(Lcom/yandex/metrica/impl/ob/ak;)V

    .line 600
    .line 601
    .line 602
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/P1$b;->a:Ljava/util/List;

    .line 603
    .line 604
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 605
    .line 606
    .line 607
    move-result v3

    .line 608
    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/qf$d;

    .line 609
    .line 610
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    check-cast v2, [Lcom/yandex/metrica/impl/ob/qf$d;

    .line 615
    .line 616
    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/qf;->a:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 617
    .line 618
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/P1$b;->c:Lorg/json/JSONObject;

    .line 619
    .line 620
    invoke-direct {v8, v0}, Lcom/yandex/metrica/impl/ob/P1;->a(Lorg/json/JSONObject;)[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    iput-object v0, v1, Lcom/yandex/metrica/impl/ob/qf;->c:[Lcom/yandex/metrica/impl/ob/qf$a;

    .line 625
    .line 626
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    new-array v0, v0, [Ljava/lang/String;

    .line 631
    .line 632
    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    check-cast v0, [Ljava/lang/String;

    .line 637
    .line 638
    iput-object v0, v1, Lcom/yandex/metrica/impl/ob/qf;->e:[Ljava/lang/String;

    .line 639
    .line 640
    iget v0, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 641
    .line 642
    const/16 v2, 0x8

    .line 643
    .line 644
    invoke-static {v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeTagSize(I)I

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    add-int/2addr v0, v2

    .line 649
    iput v0, v8, Lcom/yandex/metrica/impl/ob/P1;->g:I

    .line 650
    .line 651
    iput-object v1, v8, Lcom/yandex/metrica/impl/ob/P1;->d:Lcom/yandex/metrica/impl/ob/qf;

    .line 652
    .line 653
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->i:Lcom/yandex/metrica/impl/ob/P1$b;

    .line 654
    .line 655
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/P1$b;->b:Ljava/util/List;

    .line 656
    .line 657
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->f:Ljava/util/List;

    .line 658
    .line 659
    iget-object v0, v8, Lcom/yandex/metrica/impl/ob/P1;->s:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 660
    .line 661
    invoke-static {v1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->c([B)Z

    .line 666
    .line 667
    .line 668
    return v19

    .line 669
    :catchall_9
    move-exception v0

    .line 670
    move-object v1, v0

    .line 671
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/A2;->a(Landroid/database/Cursor;)V

    .line 672
    .line 673
    .line 674
    throw v1

    .line 675
    :cond_13
    :goto_f
    move v1, v10

    .line 676
    return v1
.end method

.method public onPerformRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->s:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPostRequestComplete(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/P1;->a(Z)V

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/P1;->r:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/P1;->a(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/P1;->k:Lcom/yandex/metrica/impl/ob/cm;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    :goto_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/P1;->i:Lcom/yandex/metrica/impl/ob/P1$b;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/P1$b;->a:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ge v0, p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/P1;->k:Lcom/yandex/metrica/impl/ob/cm;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/P1;->i:Lcom/yandex/metrica/impl/ob/P1$b;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/P1$b;->a:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/yandex/metrica/impl/ob/qf$d;

    .line 55
    .line 56
    const-string v2, "Event sent"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/cm;->a(Lcom/yandex/metrica/impl/ob/qf$d;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    return-void
.end method

.method public onRequestComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->s:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onRequestError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onShouldNotExecute()V
    .locals 0

    return-void
.end method

.method public onSuccessfulTaskFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ob;->c()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTaskAdded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ob;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onTaskFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->i()Lcom/yandex/metrica/impl/ob/L7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L7;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ob;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onTaskRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/P1;->a:Lcom/yandex/metrica/impl/ob/L3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L3;->l()Lcom/yandex/metrica/impl/ob/ob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ob;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
