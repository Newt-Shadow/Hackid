.class public Lcom/yandex/metrica/impl/ob/re;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/re$b;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/D0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/yandex/metrica/impl/ob/re;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ye;

.field private final b:Lcom/yandex/metrica/impl/ob/Ge;

.field private final c:Lcom/yandex/metrica/impl/ob/oe;

.field private final d:Lcom/yandex/metrica/impl/ob/se;

.field private final e:Lcom/yandex/metrica/impl/ob/xe;

.field private final f:Lcom/yandex/metrica/impl/ob/ze;

.field private final g:Lcom/yandex/metrica/impl/ob/te;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/D0;->c:Lcom/yandex/metrica/impl/ob/D0;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/yandex/metrica/impl/ob/D0;->d:Lcom/yandex/metrica/impl/ob/D0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/yandex/metrica/impl/ob/D0;->b:Lcom/yandex/metrica/impl/ob/D0;

    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/yandex/metrica/impl/ob/re;->h:Ljava/util/Map;

    .line 41
    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/ob/re;

    .line 43
    .line 44
    new-instance v2, Lcom/yandex/metrica/impl/ob/De;

    .line 45
    .line 46
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/De;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/yandex/metrica/impl/ob/Ee;

    .line 50
    .line 51
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Ee;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lcom/yandex/metrica/impl/ob/Ae;

    .line 55
    .line 56
    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/Ae;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lcom/yandex/metrica/impl/ob/Ce;

    .line 60
    .line 61
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Ce;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v6, Lcom/yandex/metrica/impl/ob/ue;

    .line 65
    .line 66
    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/ue;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v7, Lcom/yandex/metrica/impl/ob/ve;

    .line 70
    .line 71
    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/ve;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/yandex/metrica/impl/ob/te;

    .line 75
    .line 76
    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/te;-><init>()V

    .line 77
    .line 78
    .line 79
    move-object v1, v0

    .line 80
    invoke-direct/range {v1 .. v8}, Lcom/yandex/metrica/impl/ob/re;-><init>(Lcom/yandex/metrica/impl/ob/ye;Lcom/yandex/metrica/impl/ob/Ge;Lcom/yandex/metrica/impl/ob/oe;Lcom/yandex/metrica/impl/ob/se;Lcom/yandex/metrica/impl/ob/xe;Lcom/yandex/metrica/impl/ob/ze;Lcom/yandex/metrica/impl/ob/te;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/yandex/metrica/impl/ob/re;->i:Lcom/yandex/metrica/impl/ob/re;

    .line 84
    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/re$b;)V
    .locals 8

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->f(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/ye;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->g(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/Ge;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/oe;

    move-result-object v3

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->b(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/se;

    move-result-object v4

    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->c(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/xe;

    move-result-object v5

    .line 7
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->d(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/ze;

    move-result-object v6

    .line 8
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/re$b;->e(Lcom/yandex/metrica/impl/ob/re$b;)Lcom/yandex/metrica/impl/ob/te;

    move-result-object v7

    move-object v0, p0

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/re;-><init>(Lcom/yandex/metrica/impl/ob/ye;Lcom/yandex/metrica/impl/ob/Ge;Lcom/yandex/metrica/impl/ob/oe;Lcom/yandex/metrica/impl/ob/se;Lcom/yandex/metrica/impl/ob/xe;Lcom/yandex/metrica/impl/ob/ze;Lcom/yandex/metrica/impl/ob/te;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/re$b;Lcom/yandex/metrica/impl/ob/re$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/re;-><init>(Lcom/yandex/metrica/impl/ob/re$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/ye;Lcom/yandex/metrica/impl/ob/Ge;Lcom/yandex/metrica/impl/ob/oe;Lcom/yandex/metrica/impl/ob/se;Lcom/yandex/metrica/impl/ob/xe;Lcom/yandex/metrica/impl/ob/ze;Lcom/yandex/metrica/impl/ob/te;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/re;->a:Lcom/yandex/metrica/impl/ob/ye;

    .line 12
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/re;->b:Lcom/yandex/metrica/impl/ob/Ge;

    .line 13
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/re;->c:Lcom/yandex/metrica/impl/ob/oe;

    .line 14
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/re;->d:Lcom/yandex/metrica/impl/ob/se;

    .line 15
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/re;->e:Lcom/yandex/metrica/impl/ob/xe;

    .line 16
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/re;->f:Lcom/yandex/metrica/impl/ob/ze;

    .line 17
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/re;->g:Lcom/yandex/metrica/impl/ob/te;

    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/re$b;
    .locals 3

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/ob/re$b;

    sget-object v1, Lcom/yandex/metrica/impl/ob/re;->i:Lcom/yandex/metrica/impl/ob/re;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/re$b;-><init>(Lcom/yandex/metrica/impl/ob/re;Lcom/yandex/metrica/impl/ob/re$a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/ye;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->a:Lcom/yandex/metrica/impl/ob/ye;

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/Ge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->b:Lcom/yandex/metrica/impl/ob/Ge;

    return-object p0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/re;
    .locals 1

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/re;->i:Lcom/yandex/metrica/impl/ob/re;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/oe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->c:Lcom/yandex/metrica/impl/ob/oe;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/se;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->d:Lcom/yandex/metrica/impl/ob/se;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/xe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->e:Lcom/yandex/metrica/impl/ob/xe;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/ze;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->f:Lcom/yandex/metrica/impl/ob/ze;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/yandex/metrica/impl/ob/re;)Lcom/yandex/metrica/impl/ob/te;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/re;->g:Lcom/yandex/metrica/impl/ob/te;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)Lcom/yandex/metrica/impl/ob/qf$d$a;
    .locals 7

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/re;->f:Lcom/yandex/metrica/impl/ob/ze;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/qe;->o:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/qe;->p:Ljava/lang/String;

    iget-object v4, p1, Lcom/yandex/metrica/impl/ob/qe;->i:Ljava/lang/String;

    iget-object v5, p1, Lcom/yandex/metrica/impl/ob/qe;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/ze;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/re;->e:Lcom/yandex/metrica/impl/ob/xe;

    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/qe;->g:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/yandex/metrica/impl/ob/xe;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qf$b;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/qe;->m:Ljava/lang/String;

    const/4 v4, 0x0

    .line 6
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;)Lcom/yandex/metrica/i;

    move-result-object v3

    .line 8
    new-instance v5, Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/qf$d$a$a;-><init>()V

    .line 9
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->f()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/qf$d$a$a;->a:Ljava/lang/String;

    .line 11
    :cond_0
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->d()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/qf$d$a$a;->b:Ljava/lang/String;

    .line 13
    :cond_1
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v3}, Lcom/yandex/metrica/i;->a()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/yandex/metrica/impl/ob/qf$d$a$a;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    move-object v5, v4

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->g:Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    :cond_4
    if-eqz v2, :cond_5

    .line 16
    iput-object v2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->f:Lcom/yandex/metrica/impl/ob/qf$b;

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/re;->a:Lcom/yandex/metrica/impl/ob/ye;

    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/qe;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/yandex/metrica/impl/ob/ye;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 18
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->d:Ljava/lang/String;

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/re;->b:Lcom/yandex/metrica/impl/ob/Ge;

    invoke-interface {v1, p1, p2}, Lcom/yandex/metrica/impl/ob/Ge;->a(Lcom/yandex/metrica/impl/ob/qe;Lcom/yandex/metrica/impl/ob/Lg;)[B

    move-result-object p2

    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->e:[B

    .line 20
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->l:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 21
    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->h:Ljava/lang/String;

    :cond_7
    if-eqz v5, :cond_8

    .line 22
    iput-object v5, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->i:Lcom/yandex/metrica/impl/ob/qf$d$a$a;

    .line 23
    :cond_8
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/re;->d:Lcom/yandex/metrica/impl/ob/se;

    invoke-interface {p2, p1}, Lcom/yandex/metrica/impl/ob/se;->a(Lcom/yandex/metrica/impl/ob/qe;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->c:I

    .line 25
    :cond_9
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_a

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->a:J

    .line 27
    :cond_a
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->d:Ljava/lang/Integer;

    if-eqz p2, :cond_b

    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->o:J

    .line 29
    :cond_b
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->e:Ljava/lang/Integer;

    if-eqz p2, :cond_c

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->p:J

    .line 31
    :cond_c
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->f:Ljava/lang/Long;

    if-eqz p2, :cond_d

    .line 32
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->b:J

    .line 33
    :cond_d
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->n:Ljava/lang/Integer;

    if-eqz p2, :cond_e

    .line 34
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->j:I

    .line 35
    :cond_e
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/re;->c:Lcom/yandex/metrica/impl/ob/oe;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qe;->r:Lcom/yandex/metrica/impl/ob/Em;

    invoke-interface {p2, v1}, Lcom/yandex/metrica/impl/ob/oe;->a(Lcom/yandex/metrica/impl/ob/Em;)I

    move-result p2

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->k:I

    .line 36
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->g:Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 37
    :try_start_1
    new-instance v1, Lcom/yandex/metrica/impl/ob/Tl$a;

    invoke-direct {v1, p2}, Lcom/yandex/metrica/impl/ob/Tl$a;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance p2, Lcom/yandex/metrica/impl/ob/L6;

    invoke-direct {p2}, Lcom/yandex/metrica/impl/ob/L6;-><init>()V

    const-string v2, "enabled"

    .line 39
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 40
    invoke-virtual {p2, v1}, Lcom/yandex/metrica/impl/ob/F1;->a(Ljava/lang/Boolean;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :cond_f
    const/4 p2, -0x1

    .line 41
    :goto_1
    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->l:I

    .line 42
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->q:Ljava/lang/String;

    if-eqz p2, :cond_10

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->m:[B

    .line 44
    :cond_10
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->s:Lcom/yandex/metrica/impl/ob/D0;

    if-eqz p2, :cond_11

    .line 45
    sget-object v1, Lcom/yandex/metrica/impl/ob/re;->h:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    :cond_11
    if-eqz v4, :cond_12

    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->n:I

    .line 47
    :cond_12
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->t:Lcom/yandex/metrica/impl/ob/E$b$a;

    if-eqz p2, :cond_13

    .line 48
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/E$b$a;)I

    move-result p2

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->q:I

    .line 49
    :cond_13
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->u:Lcom/yandex/metrica/impl/ob/oc$a;

    if-eqz p2, :cond_14

    .line 50
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->a(Lcom/yandex/metrica/impl/ob/oc$a;)I

    move-result p2

    goto :goto_2

    :cond_14
    const/4 p2, 0x3

    .line 51
    :goto_2
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/qe;->v:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->s:I

    .line 53
    :cond_15
    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->r:I

    .line 54
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->w:Ljava/lang/Integer;

    if-nez p2, :cond_16

    const/4 p2, 0x0

    goto :goto_3

    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_3
    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->t:I

    .line 55
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->x:Lcom/yandex/metrica/impl/ob/y0;

    if-eqz p2, :cond_17

    .line 56
    iget p2, p2, Lcom/yandex/metrica/impl/ob/y0;->a:I

    iput p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->u:I

    .line 57
    :cond_17
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->y:Ljava/lang/Boolean;

    if-eqz p2, :cond_18

    .line 58
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->v:Z

    .line 59
    :cond_18
    iget-object p2, p1, Lcom/yandex/metrica/impl/ob/qe;->z:Ljava/lang/Integer;

    if-eqz p2, :cond_19

    .line 60
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    .line 61
    :cond_19
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/re;->g:Lcom/yandex/metrica/impl/ob/te;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/qe;->A:[B

    invoke-virtual {p2, p1}, Lcom/yandex/metrica/impl/ob/te;->a([B)[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    move-result-object p1

    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a;->x:[Lcom/yandex/metrica/impl/ob/qf$d$a$b;

    return-object v0
.end method
