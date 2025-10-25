.class public Lcom/yandex/metrica/impl/ob/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/impl/ob/c0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field e:I

.field f:I

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/yandex/metrica/impl/ob/D0;

.field private m:Lcom/yandex/metrica/impl/ob/y0;

.field private n:Landroid/os/Bundle;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Integer;

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c0$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/c0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/yandex/metrica/impl/ob/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/c0;-><init>(Ljava/lang/String;Ljava/lang/String;ILdc/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILdc/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/D0;->b:Lcom/yandex/metrica/impl/ob/D0;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->l:Lcom/yandex/metrica/impl/ob/D0;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p4}, Ldc/c;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    .line 11
    invoke-virtual {p4}, Ldc/c;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->m:Lcom/yandex/metrica/impl/ob/a1;

    .line 60
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v1

    .line 61
    iput v1, v0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "CounterReport.Object"

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    .line 13
    :catchall_0
    new-instance p0, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 18
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->h:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/c0;Landroid/util/Pair;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/A0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 3

    .line 19
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lcom/yandex/metrica/impl/ob/nf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/nf;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/nf;->a:[B

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c0;->a([B)Lcom/yandex/metrica/impl/ob/c0;

    .line 24
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    .line 25
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    .line 26
    iget-wide p0, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    .line 27
    iput-wide p0, v0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    return-object v0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/L3;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/Y0;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/L3;->g()Landroid/content/Context;

    move-result-object p1

    .line 29
    new-instance v1, Lcom/yandex/metrica/impl/ob/q0;

    invoke-direct {v1, p1}, Lcom/yandex/metrica/impl/ob/q0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/Y0;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/q0;)V

    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Y0;->c()Lcom/yandex/metrica/impl/ob/Y0;

    move-result-object p1

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Y0;->b()Lcom/yandex/metrica/impl/ob/Y0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :catchall_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/c0;->d(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    .line 33
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->t:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v0

    .line 34
    iput v0, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 35
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Y0;->a()Ljava/lang/String;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/c0;->d(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result p1

    .line 17
    iput p1, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/c0;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 55
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/c0;->d(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    .line 56
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->W:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v0

    .line 57
    iput v0, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 58
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/c0;Ljava/util/Collection;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/v;Ljava/util/List;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/c0;",
            "Ljava/util/Collection<",
            "Lcom/yandex/metrica/impl/ob/Bd;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/z;",
            "Lcom/yandex/metrica/impl/ob/v;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yandex/metrica/impl/ob/c0;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/c0;->d(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    .line 38
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/Bd;

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "name"

    :try_start_1
    iget-object v4, v1, Lcom/yandex/metrica/impl/ob/Bd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "granted"

    :try_start_2
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/Bd;->b:Z

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_7

    const-string v1, "background_restricted"

    .line 42
    :try_start_3
    iget-object v2, p2, Lcom/yandex/metrica/impl/ob/z;->b:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "app_standby_bucket"

    .line 43
    :try_start_4
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/z;->a:Lcom/yandex/metrica/impl/ob/z$a;

    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_6

    const/4 p3, 0x1

    if-eq p2, p3, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    :goto_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const-string p2, "RESTRICTED"

    goto :goto_2

    :cond_3
    const-string p2, "RARE"

    goto :goto_2

    :cond_4
    const-string p2, "FREQUENT"

    goto :goto_2

    :cond_5
    const-string p2, "WORKING_SET"

    goto :goto_2

    :cond_6
    const-string p2, "ACTIVE"

    .line 46
    :goto_2
    :try_start_5
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_7
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "permissions"

    .line 48
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "background_restrictions"

    .line 49
    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string p2, "available_providers"

    :try_start_6
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    const-string p1, ""

    .line 52
    :goto_3
    sget-object p2, Lcom/yandex/metrica/impl/ob/a1;->V:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result p2

    .line 53
    iput p2, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->d0:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v1

    .line 63
    iput v1, v0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 64
    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 65
    sget-object p0, Lcom/yandex/metrica/impl/ob/y0;->c:Lcom/yandex/metrica/impl/ob/y0;

    .line 66
    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/c0;->m:Lcom/yandex/metrica/impl/ob/y0;

    return-object v0
.end method

.method public static b(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->P:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 4
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->d:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 3

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    .line 4
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    .line 5
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    .line 6
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    .line 7
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    .line 8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->c:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/c0;->c:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    .line 11
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    .line 12
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->d:Ljava/lang/String;

    .line 13
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/c0;->d:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->n:Landroid/os/Bundle;

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/c0;->n:Landroid/os/Bundle;

    .line 16
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    .line 18
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/c0;->i:Ljava/lang/String;

    .line 19
    iput-object p0, v0, Lcom/yandex/metrica/impl/ob/c0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->U:Lcom/yandex/metrica/impl/ob/a1;

    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 2
    iput p1, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    return-object p0
.end method

.method protected a(J)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/D0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->l:Lcom/yandex/metrica/impl/ob/D0;

    return-object p0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/y0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->m:Lcom/yandex/metrica/impl/ob/y0;

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->o:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->p:Ljava/lang/Integer;

    return-object p0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/yandex/metrica/impl/ob/c0;"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    return-object p0
.end method

.method public a([B)Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "CounterReport.Object"

    .line 4
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p1
.end method

.method public b()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    return-object v0
.end method

.method protected b(J)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected c(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->n:Landroid/os/Bundle;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/Boolean;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->o:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/c0;->h:I

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    return-wide v0
.end method

.method public f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/yandex/metrica/impl/ob/D0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->l:Lcom/yandex/metrica/impl/ob/D0;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->p:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->n:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lcom/yandex/metrica/impl/ob/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->m:Lcom/yandex/metrica/impl/ob/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 6
    .line 7
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/a1;->a(I)Lcom/yandex/metrica/impl/ob/a1;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v4, 0x1f4

    .line 18
    .line 19
    invoke-static {v3, v4}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "[event: %s, type: %s, value: %s]"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "CounterReport.Event"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "CounterReport.Value"

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 21
    .line 22
    const-string v1, "CounterReport.Type"

    .line 23
    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/yandex/metrica/impl/ob/c0;->f:I

    .line 28
    .line 29
    const-string v1, "CounterReport.CustomType"

    .line 30
    .line 31
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/yandex/metrica/impl/ob/c0;->h:I

    .line 35
    .line 36
    const-string v1, "CounterReport.TRUNCATED"

    .line 37
    .line 38
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->i:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "CounterReport.ProfileID"

    .line 44
    .line 45
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->l:Lcom/yandex/metrica/impl/ob/D0;

    .line 49
    .line 50
    iget v0, v0, Lcom/yandex/metrica/impl/ob/D0;->a:I

    .line 51
    .line 52
    const-string v1, "CounterReport.UniquenessStatus"

    .line 53
    .line 54
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->n:Landroid/os/Bundle;

    .line 58
    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    const-string v1, "CounterReport.Payload"

    .line 62
    .line 63
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->d:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const-string v1, "CounterReport.Environment"

    .line 71
    .line 72
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->c:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    const-string v1, "CounterReport.UserInfo"

    .line 80
    .line 81
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->g:Landroid/util/Pair;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "CounterReport.AppEnvironmentDiffKey"

    .line 93
    .line 94
    invoke-virtual {p2, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    const-string v1, "CounterReport.AppEnvironmentDiffValue"

    .line 102
    .line 103
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/c0;->j:J

    .line 107
    .line 108
    const-string v2, "CounterReport.CreationElapsedRealtime"

    .line 109
    .line 110
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/c0;->k:J

    .line 114
    .line 115
    const-string v2, "CounterReport.CreationTimestamp"

    .line 116
    .line 117
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->m:Lcom/yandex/metrica/impl/ob/y0;

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget v0, v0, Lcom/yandex/metrica/impl/ob/y0;->a:I

    .line 125
    .line 126
    const-string v1, "CounterReport.Source"

    .line 127
    .line 128
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->o:Ljava/lang/Boolean;

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const-string v1, "CounterReport.AttributionIdChanged"

    .line 140
    .line 141
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->p:Ljava/lang/Integer;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const-string v1, "CounterReport.OpenId"

    .line 153
    .line 154
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/c0;->q:Ljava/util/Map;

    .line 158
    .line 159
    invoke-static {v0}, Lac/a;->b(Ljava/util/Map;)Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "CounterReport.Extras"

    .line 164
    .line 165
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
