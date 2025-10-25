.class public Lcom/yandex/metrica/impl/ob/mi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z

.field private g:Lcom/yandex/metrica/impl/ob/fl;

.field private h:Lcom/yandex/metrica/impl/ob/ra;

.field private i:J

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/gl;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yandex/metrica/impl/ob/b9;

.field private final l:Lcom/yandex/metrica/impl/ob/Rh;

.field private final m:Lcom/yandex/metrica/impl/ob/Th;

.field private final n:Lcom/yandex/metrica/impl/ob/Wh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/b9;)V
    .locals 8

    .line 1
    new-instance v2, Lcom/yandex/metrica/impl/ob/Nh;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Nh;-><init>()V

    new-instance v3, Lcom/yandex/metrica/impl/ob/Rh;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Rh;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ej;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/hj;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/hj;-><init>(Lcom/yandex/metrica/impl/ob/b9;)V

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/ej;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/bj;)Lcom/yandex/metrica/impl/ob/dj;

    move-result-object v4

    new-instance v5, Lcom/yandex/metrica/impl/ob/Th;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Th;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Wh;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/Wh;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/Vh;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/Vh;-><init>()V

    move-object v0, p0

    move-object v1, p2

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/mi;-><init>(Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Nh;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/Th;Lcom/yandex/metrica/impl/ob/Wh;Lcom/yandex/metrica/impl/ob/Vh;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/b9;Lcom/yandex/metrica/impl/ob/Nh;Lcom/yandex/metrica/impl/ob/Rh;Lcom/yandex/metrica/impl/ob/dj;Lcom/yandex/metrica/impl/ob/Th;Lcom/yandex/metrica/impl/ob/Wh;Lcom/yandex/metrica/impl/ob/Vh;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->a:Ljava/util/Set;

    .line 6
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 7
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    const-string p7, "yandex_mobile_metrica_google_adv_id"

    .line 8
    invoke-virtual {p2, p7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "yandex_mobile_metrica_huawei_oaid"

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "yandex_mobile_metrica_yandex_adv_id"

    .line 10
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    .line 12
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/mi;->l:Lcom/yandex/metrica/impl/ob/Rh;

    .line 13
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    .line 14
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    .line 15
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/dj;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_uuid"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 16
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->l()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_device_id"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->k()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "appmetrica_device_id_hash"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 18
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->f()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_get_ad_url"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 19
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->g()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_report_ad_url"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 20
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->r()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    const-string p3, "yandex_mobile_metrica_clids"

    invoke-direct {p0, p3, p2}, Lcom/yandex/metrica/impl/ob/mi;->b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 21
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->o()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, p7, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 22
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->p()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 23
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->v()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->j()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/yandex/metrica/impl/ob/Th;->a(Lcom/yandex/metrica/impl/ob/W0;)V

    .line 25
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->n()Lcom/yandex/metrica/impl/ob/Xh;

    move-result-object p2

    invoke-virtual {p6, p2}, Lcom/yandex/metrica/impl/ob/Wh;->a(Lcom/yandex/metrica/impl/ob/Xh;)V

    .line 26
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->i()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/b9;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/b9;->b(Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    const-wide/16 p2, 0x0

    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/b9;->d(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 31
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->t()Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 32
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->m()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 33
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/b9;->q()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 34
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V
    .locals 1

    .line 9
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/W0;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/W0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b(Lcom/yandex/metrica/impl/ob/W0;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 4
    .line 5
    const-string v2, "yandex_mobile_metrica_uuid"

    .line 6
    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->i(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 18
    .line 19
    const-string v2, "yandex_mobile_metrica_device_id"

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->e(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 32
    .line 33
    const-string v2, "appmetrica_device_id_hash"

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->d(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 46
    .line 47
    const-string v2, "yandex_mobile_metrica_get_ad_url"

    .line 48
    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 60
    .line 61
    const-string v2, "yandex_mobile_metrica_report_ad_url"

    .line 62
    .line 63
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->b(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->h(J)Lcom/yandex/metrica/impl/ob/b9;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 80
    .line 81
    const-string v2, "yandex_mobile_metrica_clids"

    .line 82
    .line 83
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->h(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->r(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/b9;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/fl;)Lcom/yandex/metrica/impl/ob/b9;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/ra;)Lcom/yandex/metrica/impl/ob/b9;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 116
    .line 117
    const-string v2, "yandex_mobile_metrica_google_adv_id"

    .line 118
    .line 119
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->f(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 130
    .line 131
    const-string v2, "yandex_mobile_metrica_huawei_oaid"

    .line 132
    .line 133
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->g(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 144
    .line 145
    const-string v2, "yandex_mobile_metrica_yandex_adv_id"

    .line 146
    .line 147
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->j(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->d(Z)Lcom/yandex/metrica/impl/ob/b9;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Th;->a()Lcom/yandex/metrica/impl/ob/W0;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->c(Lcom/yandex/metrica/impl/ob/W0;)Lcom/yandex/metrica/impl/ob/b9;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 174
    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/b9;->g(J)Lcom/yandex/metrica/impl/ob/b9;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Wh;->a()Lcom/yandex/metrica/impl/ob/Xh;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/b9;->a(Lcom/yandex/metrica/impl/ob/Xh;)Lcom/yandex/metrica/impl/ob/b9;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 190
    .line 191
    .line 192
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 4

    .line 26
    new-instance v0, Lcom/yandex/metrica/impl/ob/L;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/L;-><init>(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->o()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_uuid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->c()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_device_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->d()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "appmetrica_device_id_hash"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->g()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_google_adv_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->i()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_huawei_oaid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->p()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_yandex_adv_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->b()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/Th;->a(Lcom/yandex/metrica/impl/ob/W0;)V

    .line 42
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->f()Lcom/yandex/metrica/impl/ob/Xh;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/Wh;->a(Lcom/yandex/metrica/impl/ob/Xh;)V

    .line 43
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->h()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_get_ad_url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->k()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 48
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v2, "yandex_mobile_metrica_report_ad_url"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->m()J

    move-result-wide v1

    .line 50
    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 51
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->l:Lcom/yandex/metrica/impl/ob/Rh;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    .line 52
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->a()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v2

    iget-object v2, v2, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 55
    :cond_6
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 56
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 58
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result p1

    goto :goto_1

    .line 59
    :cond_7
    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    .line 60
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->l()Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    const-string v2, "yandex_mobile_metrica_clids"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 62
    :cond_8
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->n()Lcom/yandex/metrica/impl/ob/fl;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 63
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fl;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 64
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 65
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/gl;

    .line 66
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/gl;->a(Lcom/yandex/metrica/impl/ob/fl;)V

    goto :goto_2

    .line 67
    :cond_9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->e()Lcom/yandex/metrica/impl/ob/ra;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 68
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/L;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    .line 69
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/gl;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->k:Lcom/yandex/metrica/impl/ob/b9;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/b9;->b(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/b9;

    return-void
.end method

.method declared-synchronized a(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/W0;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/W0;

    if-eqz v2, :cond_0

    .line 14
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Th;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Wh;->a(Ljava/util/List;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    .line 4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/mi;->h()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    const-string v1, "yandex_mobile_metrica_clids"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    .line 6
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method declared-synchronized a(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    if-nez v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->m:Lcom/yandex/metrica/impl/ob/Th;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Th;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/impl/ob/W0;

    :cond_1
    if-nez v1, :cond_2

    .line 20
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/mi;->n:Lcom/yandex/metrica/impl/ob/Wh;

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/Wh;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/W0;

    move-result-object v1

    :cond_2
    const-string v2, "yandex_mobile_metrica_clids"

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 22
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->a(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    :try_start_1
    const-string v2, "yandex_mobile_metrica_lib_ssl_enabled"

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    monitor-exit p0

    return v3

    .line 25
    :cond_5
    :try_start_2
    invoke-direct {p0, v1}, Lcom/yandex/metrica/impl/ob/mi;->b(Lcom/yandex/metrica/impl/ob/W0;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v3

    :cond_6
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->c:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized b(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ni;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/mi;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mi;->a:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v3

    .line 8
    :goto_0
    iget-wide v4, p0, Lcom/yandex/metrica/impl/ob/mi;->i:J

    invoke-static {v4, v5}, Lcom/yandex/metrica/impl/ob/ni;->a(J)Z

    move-result v2

    .line 9
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/fl;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    xor-int/2addr v4, v1

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    if-nez v2, :cond_4

    .line 10
    iget-boolean p1, p0, Lcom/yandex/metrica/impl/ob/mi;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "yandex_mobile_metrica_device_id"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    return-object v0
.end method

.method public d()Lcom/yandex/metrica/impl/ob/ra;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->h:Lcom/yandex/metrica/impl/ob/ra;

    .line 2
    .line 3
    return-object v0
.end method

.method e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/mi;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f()Lcom/yandex/metrica/impl/ob/fl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->g:Lcom/yandex/metrica/impl/ob/fl;

    .line 2
    .line 3
    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/mi;->b:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "yandex_mobile_metrica_uuid"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/yandex/metrica/impl/ob/W0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/W0;->a:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    return-object v0
.end method
