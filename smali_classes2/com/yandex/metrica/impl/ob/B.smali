.class public abstract Lcom/yandex/metrica/impl/ob/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/I0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/B$b;
    }
.end annotation


# static fields
.field private static final n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcom/yandex/metrica/impl/ob/Kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/Kn<",
            "Lcom/yandex/metrica/impl/ob/vf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/yandex/metrica/impl/ob/Q1;

.field protected final c:Lcom/yandex/metrica/impl/ob/cm;

.field protected final d:Lcom/yandex/metrica/impl/ob/Sl;

.field protected final e:Lcom/yandex/metrica/impl/ob/X6;

.field protected final f:Lcom/yandex/metrica/impl/ob/S6;

.field protected final g:Lcom/yandex/metrica/impl/ob/M6;

.field private final h:Lcom/yandex/metrica/impl/ob/K6;

.field protected final i:Lcom/yandex/metrica/impl/ob/T1;

.field private j:Lcom/yandex/metrica/impl/ob/b1;

.field private final k:Lcom/yandex/metrica/impl/ob/bm;

.field private final l:Lcom/yandex/metrica/impl/ob/A0;

.field private final m:Lcom/yandex/metrica/impl/ob/s6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0xf

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/yandex/metrica/impl/ob/B;->n:Ljava/util/Collection;

    .line 27
    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/ob/B$a;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B$a;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/yandex/metrica/impl/ob/B;->o:Lcom/yandex/metrica/impl/ob/Kn;

    .line 34
    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Q1;Lcom/yandex/metrica/impl/ob/A0;Lcom/yandex/metrica/impl/ob/bm;Lec/d;Lcom/yandex/metrica/impl/ob/Yg;Lcom/yandex/metrica/impl/ob/X6;Lcom/yandex/metrica/impl/ob/S6;Lcom/yandex/metrica/impl/ob/M6;Lcom/yandex/metrica/impl/ob/K6;Lcom/yandex/metrica/impl/ob/s6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/B;->e:Lcom/yandex/metrica/impl/ob/X6;

    .line 17
    .line 18
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/B;->f:Lcom/yandex/metrica/impl/ob/S6;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/B;->g:Lcom/yandex/metrica/impl/ob/M6;

    .line 21
    .line 22
    iput-object p11, p0, Lcom/yandex/metrica/impl/ob/B;->h:Lcom/yandex/metrica/impl/ob/K6;

    .line 23
    .line 24
    iput-object p12, p0, Lcom/yandex/metrica/impl/ob/B;->m:Lcom/yandex/metrica/impl/ob/s6;

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 39
    .line 40
    new-instance p2, Lcom/yandex/metrica/impl/ob/bn;

    .line 41
    .line 42
    const-string p4, "Crash Environment"

    .line 43
    .line 44
    invoke-direct {p2, p1, p4}, Lcom/yandex/metrica/impl/ob/bn;-><init>(Lcom/yandex/metrica/impl/ob/cm;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, p2}, Lcom/yandex/metrica/impl/ob/Q1;->a(Lcom/yandex/metrica/impl/ob/bn;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/Ul;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Sl;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->d:Lcom/yandex/metrica/impl/ob/Sl;

    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3}, Lcom/yandex/metrica/CounterConfiguration;->R()Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p3}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/Boolean;)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/yandex/metrica/coreutils/logger/a;->setEnabled()V

    .line 82
    .line 83
    .line 84
    :cond_0
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/B;->k:Lcom/yandex/metrica/impl/ob/bm;

    .line 85
    .line 86
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/ob/H6;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    move-object v1, p1

    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, p1, Lcom/yandex/metrica/impl/ob/k6;

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    move-object p1, v0

    .line 23
    :goto_0
    new-instance v2, Lcom/yandex/metrica/impl/ob/w6;

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/B;->k:Lcom/yandex/metrica/impl/ob/bm;

    .line 24
    check-cast v3, Lcom/yandex/metrica/impl/ob/Xl;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/Xl;->b()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-direct {v2, v0, v0, v3}, Lcom/yandex/metrica/impl/ob/w6;-><init>(Lcom/yandex/metrica/impl/ob/E6;Ljava/util/List;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    .line 27
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    .line 28
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/A0;->b()Ljava/lang/Boolean;

    move-result-object v3

    .line 29
    invoke-static {v1, v2, v0, p1, v3}, Lcom/yandex/metrica/impl/ob/I6;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/w6;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". With value: "

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/yandex/metrica/impl/ob/B;->n:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x63

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    .line 14
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p4, v0

    :goto_1
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 15
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 16
    new-instance v6, Lcom/yandex/metrica/impl/ob/J;

    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->R:Lcom/yandex/metrica/impl/ob/a1;

    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 18
    invoke-static {p4}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    if-eqz p5, :cond_3

    .line 19
    invoke-virtual {p1, p5}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/c0;

    .line 20
    :cond_3
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p2, p1, p3}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    :goto_2
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->b(Lcom/yandex/metrica/impl/ob/H6;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->j:Lcom/yandex/metrica/impl/ob/b1;

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/w6;)V
    .locals 5

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/x6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/A0;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/ob/x6;-><init>(Lcom/yandex/metrica/impl/ob/w6;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 33
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->h:Lcom/yandex/metrica/impl/ob/K6;

    .line 34
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/K6;->a(Lcom/yandex/metrica/impl/ob/x6;)Lcom/yandex/metrica/impl/ob/ef;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 35
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 36
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->N:Lcom/yandex/metrica/impl/ob/a1;

    .line 37
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    const-string v4, ""

    invoke-direct {v2, v0, v4, v3, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 39
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/B;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 52
    new-instance v6, Lcom/yandex/metrica/impl/ob/J;

    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 54
    sget-object p1, Lcom/yandex/metrica/impl/ob/y0;->c:Lcom/yandex/metrica/impl/ob/y0;

    invoke-virtual {v6, p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Lcom/yandex/metrica/impl/ob/y0;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 41
    new-instance v1, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    .line 42
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 43
    sget-object p1, Lcom/yandex/metrica/impl/ob/a1;->b0:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result p1

    .line 44
    iput p1, v1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 45
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    iput-object p1, v1, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 48
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 6

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 7
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->S:Lcom/yandex/metrica/impl/ob/a1;

    .line 8
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    .line 9
    invoke-direct {v2, v4, v5, v3, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    .line 10
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/util/Map;)Lcom/yandex/metrica/impl/ob/c0;

    .line 11
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 12
    invoke-virtual {v0, v2, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yandex/metrica/impl/ob/B;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 9

    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->a:Landroid/content/Context;

    .line 23
    new-instance v2, Lcom/yandex/metrica/impl/ob/c0;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    const-string v3, ""

    .line 24
    iput-object v3, v2, Lcom/yandex/metrica/impl/ob/c0;->a:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/F0;->c()Lcom/yandex/metrica/impl/ob/E;

    move-result-object v3

    const-string v4, "GlobalServiceLocator.get\u2026nce().batteryInfoProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/E;->a()Ljava/lang/Integer;

    move-result-object v3

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/16 v6, 0x17

    .line 27
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    const-string v6, "notification"

    .line 28
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/NotificationManager;

    .line 29
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const/4 v1, 0x0

    .line 31
    :goto_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 32
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "battery"

    .line 33
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "boot_time_seconds"

    .line 34
    invoke-virtual {v3, v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "notification_filter"

    .line 35
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "dfid"

    .line 36
    invoke-virtual {v6, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "JSONObject()\n           \u2026tionFilter)\n            )"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->u:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    .line 38
    iput v3, v2, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 39
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    iput-object v1, v2, Lcom/yandex/metrica/impl/ob/c0;->b:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method protected b(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled exception received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/H6;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/c0;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object p1

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 3
    new-instance v6, Lcom/yandex/metrica/impl/ob/J;

    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->y:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, v6, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Statbox event received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " with name: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with value: "

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x64

    if-le p2, v1, :cond_0

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    const-string v0, "Error received: native"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid Error Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v0, p2, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fw(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 5
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Q1;->c:Lcom/yandex/metrica/impl/ob/x0;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/x0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Q1;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/T1;->d()V

    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->j:Lcom/yandex/metrica/impl/ob/b1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b1;->a()V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Q1;->g()V

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 9
    sget-object v1, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 10
    new-instance v7, Lcom/yandex/metrica/impl/ob/J;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->f:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    const-string v2, ""

    const/4 v5, 0x0

    move-object v1, v7

    move-object v3, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 12
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, v7, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->v:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/yandex/metrica/impl/ob/c0;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/T1;->e()V

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->j:Lcom/yandex/metrica/impl/ob/b1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/b1;->b()V

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 4
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    const-string v4, ""

    .line 6
    invoke-direct {v2, v4, p1, v3, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 7
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 8
    invoke-virtual {v0, v2, p1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 9
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Q1;->h()V

    return-void
.end method

.method e()Z
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Q1;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v3, ""

    .line 17
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 18
    sget-object v1, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 19
    new-instance v7, Lcom/yandex/metrica/impl/ob/J;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->f:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    const-string v2, ""

    const/4 v5, 0x0

    move-object v1, v7

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v1, v7, v2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    :cond_0
    return v0
.end method

.method protected f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "<null>"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "<empty>"

    :cond_1
    :goto_0
    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/T1;->b(Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public getPluginExtension()Lcom/yandex/metrica/plugins/IPluginReporter;
    .locals 0

    return-object p0
.end method

.method public pauseSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 10
    .line 11
    const-string v1, "Pause session"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/B;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public reportAdRevenue(Lcom/yandex/metrica/AdRevenue;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Sg;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/Sg;-><init>(Lcom/yandex/metrica/AdRevenue;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Sg;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "AdRevenue Received: AdRevenue{adRevenue="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v2, p1, Lcom/yandex/metrica/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ", currency=\'"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Lcom/yandex/metrica/AdRevenue;->currency:Ljava/util/Currency;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x27

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v3, ", adType="

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adType:Lcom/yandex/metrica/AdType;

    .line 69
    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    const-string v3, "<null>"

    .line 73
    .line 74
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v3, ", adNetwork=\'"

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adNetwork:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v3, ", adUnitId=\'"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adUnitId:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, ", adUnitName=\'"

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adUnitName:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v3, ", adPlacementId=\'"

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adPlacementId:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, ", adPlacementName=\'"

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->adPlacementName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v3, ", precision=\'"

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v3, p1, Lcom/yandex/metrica/AdRevenue;->precision:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0, v3}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, ", payload="

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p1, p1, Lcom/yandex/metrica/AdRevenue;->payload:Ljava/util/Map;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const/16 p1, 0x7d

    .line 194
    .line 195
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    return-void
.end method

.method public reportECommerce(Lcom/yandex/metrica/ecommerce/ECommerceEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "E-commerce event received: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/yandex/metrica/ecommerce/ECommerceEvent;->getPublicDescription()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Za;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public reportError(Lcom/yandex/metrica/plugins/PluginErrorDetails;Ljava/lang/String;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->m:Lcom/yandex/metrica/impl/ob/s6;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/s6;->a(Lcom/yandex/metrica/plugins/PluginErrorDetails;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/B6;

    invoke-direct {v0, p2, p1}, Lcom/yandex/metrica/impl/ob/B6;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/H6;)V

    .line 24
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->f:Lcom/yandex/metrica/impl/ob/S6;

    .line 25
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/S6;->a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 26
    invoke-static {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/z0;->a(Ljava/lang/String;[BLcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 27
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Error from plugin received: %s"

    invoke-virtual {p1, v0, p2}, Lcom/yandex/metrica/coreutils/logger/a;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/B;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 2

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/z6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->m:Lcom/yandex/metrica/impl/ob/s6;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    .line 31
    invoke-virtual {v1, p3}, Lcom/yandex/metrica/impl/ob/s6;->a(Lcom/yandex/metrica/plugins/PluginErrorDetails;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/B6;

    invoke-direct {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/B6;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/H6;)V

    .line 32
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/z6;-><init>(Lcom/yandex/metrica/impl/ob/B6;Ljava/lang/String;)V

    .line 33
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->g:Lcom/yandex/metrica/impl/ob/M6;

    .line 34
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/M6;->a(Lcom/yandex/metrica/impl/ob/z6;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 35
    invoke-static {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/z0;->a(Ljava/lang/String;[BLcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 36
    invoke-virtual {p3, v0, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 37
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p3}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 38
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 39
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error with identifier: %s from plugin received: %s"

    .line 40
    invoke-virtual {p3, p2, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/z6;

    new-instance v1, Lcom/yandex/metrica/impl/ob/B6;

    .line 12
    invoke-direct {p0, p3}, Lcom/yandex/metrica/impl/ob/B;->a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lcom/yandex/metrica/impl/ob/B6;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/H6;)V

    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/z6;-><init>(Lcom/yandex/metrica/impl/ob/B6;Ljava/lang/String;)V

    .line 13
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->g:Lcom/yandex/metrica/impl/ob/M6;

    .line 14
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/M6;->a(Lcom/yandex/metrica/impl/ob/z6;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 15
    invoke-static {p2, v0, v1}, Lcom/yandex/metrica/impl/ob/z0;->a(Ljava/lang/String;[BLcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p3, v0, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 16
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p3}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 17
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 18
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error received: id: %s, message: %s"

    .line 20
    invoke-virtual {p3, p2, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B6;

    invoke-direct {p0, p2}, Lcom/yandex/metrica/impl/ob/B;->a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/B6;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/H6;)V

    .line 2
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->f:Lcom/yandex/metrica/impl/ob/S6;

    .line 3
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/impl/ob/S6;->a(Lcom/yandex/metrica/impl/ob/B6;)Lcom/yandex/metrica/impl/ob/hf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 4
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/J;

    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->H:Lcom/yandex/metrica/impl/ob/a1;

    .line 6
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v3

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p2, v2, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 8
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p2}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error received: %s"

    invoke-virtual {p2, v0, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 7
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/J;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v5

    const-string v3, ""

    const/4 v6, 0x0

    move-object v2, v0

    move-object v4, p1

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 10
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/B;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 14
    sget-object v0, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/J;

    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 17
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 20
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 21
    new-instance v8, Lcom/yandex/metrica/impl/ob/J;

    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v5

    const-string v3, ""

    const/4 v6, 0x0

    move-object v2, v8

    move-object v4, p1

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 23
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 24
    invoke-virtual {p2, v8, v2, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;Ljava/util/Map;)Ljava/util/concurrent/Future;

    .line 25
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p2}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/yandex/metrica/impl/ob/B;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public reportRevenue(Lcom/yandex/metrica/Revenue;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/B$b;->a()Lcom/yandex/metrica/impl/ob/Kn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 16
    .line 17
    new-instance v1, Lcom/yandex/metrica/impl/ob/W1;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 20
    .line 21
    invoke-direct {v1, p1, v2}, Lcom/yandex/metrica/impl/ob/W1;-><init>(Lcom/yandex/metrica/Revenue;Lcom/yandex/metrica/impl/ob/cm;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/W1;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Revenue received "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v1, "for productID: "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lcom/yandex/metrica/Revenue;->productID:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " of quantity: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p1, Lcom/yandex/metrica/Revenue;->quantity:Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "<null>"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :goto_0
    const-string v1, " with price"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p1, Lcom/yandex/metrica/Revenue;->priceMicros:Ljava/lang/Long;

    .line 82
    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    const-string v1, " (in micros): "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Lcom/yandex/metrica/Revenue;->priceMicros:Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string v1, ": "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p1, Lcom/yandex/metrica/Revenue;->price:Ljava/lang/Double;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :goto_1
    const-string v1, " "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object p1, p1, Lcom/yandex/metrica/Revenue;->currency:Ljava/util/Currency;

    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "Passed revenue is not valid. Reason: "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->a()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->w(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_2
    return-void
.end method

.method public reportUnhandledException(Lcom/yandex/metrica/plugins/PluginErrorDetails;)V
    .locals 6

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->m:Lcom/yandex/metrica/impl/ob/s6;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/s6;->a(Lcom/yandex/metrica/plugins/PluginErrorDetails;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 12
    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/H6;->a:Lcom/yandex/metrica/impl/ob/F6;

    const-string v3, ""

    if-nez v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F6;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->e:Lcom/yandex/metrica/impl/ob/X6;

    .line 15
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/impl/ob/X6;->a(Lcom/yandex/metrica/impl/ob/H6;)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 16
    sget-object v4, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 17
    sget-object v4, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    .line 18
    new-instance v5, Lcom/yandex/metrica/impl/ob/J;

    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    move-result v4

    invoke-direct {v5, v0, v3, v4, v2}, Lcom/yandex/metrica/impl/ob/J;-><init>([BLjava/lang/String;ILcom/yandex/metrica/impl/ob/cm;)V

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v1, v5, v0}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    invoke-virtual {p1}, Lcom/yandex/metrica/plugins/PluginErrorDetails;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Crash from plugin received: %s"

    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/coreutils/logger/a;->fi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/w6;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->k:Lcom/yandex/metrica/impl/ob/bm;

    .line 2
    check-cast v1, Lcom/yandex/metrica/impl/ob/Xl;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Xl;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v2, v2, v1}, Lcom/yandex/metrica/impl/ob/w6;-><init>(Lcom/yandex/metrica/impl/ob/E6;Ljava/util/List;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    .line 5
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/A0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/B;->l:Lcom/yandex/metrica/impl/ob/A0;

    .line 6
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/A0;->b()Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    invoke-static {p1, v0, v2, v1, v3}, Lcom/yandex/metrica/impl/ob/I6;->a(Ljava/lang/Throwable;Lcom/yandex/metrica/impl/ob/w6;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/yandex/metrica/impl/ob/H6;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->b(Lcom/yandex/metrica/impl/ob/H6;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->b(Lcom/yandex/metrica/impl/ob/H6;)V

    return-void
.end method

.method public reportUserProfile(Lcom/yandex/metrica/profile/UserProfile;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/af;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/af;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/yandex/metrica/profile/UserProfile;->getUserProfileUpdates()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/yandex/metrica/profile/UserProfileUpdate;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/yandex/metrica/profile/UserProfileUpdate;->getUserProfileUpdatePatcher()Lcom/yandex/metrica/impl/ob/bf;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 31
    .line 32
    check-cast v1, Lcom/yandex/metrica/impl/ob/Se;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/Se;->a(Lcom/yandex/metrica/impl/ob/cm;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/bf;->a(Lcom/yandex/metrica/impl/ob/af;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/af;->c()Lcom/yandex/metrica/impl/ob/vf;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/ob/B;->o:Lcom/yandex/metrica/impl/ob/Kn;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/Kn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->b()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/vf;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "User profile received"

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 98
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "UserInfo wasn\'t sent because "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/In;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->w(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    :goto_1
    return-void
.end method

.method public resumeSession()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/B;->e(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 14
    .line 15
    const-string v1, "Resume session"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public sendEventsBuffer()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 2
    .line 3
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->p:Lcom/yandex/metrica/impl/ob/a1;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    .line 7
    sget-object v2, Lcom/yandex/metrica/impl/ob/z0;->i:Ljava/util/List;

    .line 8
    .line 9
    new-instance v8, Lcom/yandex/metrica/impl/ob/J;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const-string v3, ""

    .line 16
    .line 17
    const-string v4, ""

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v2, v8

    .line 21
    invoke-direct/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/J;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yandex/metrica/impl/ob/cm;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 25
    .line 26
    invoke-virtual {v0, v8, v1}, Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setStatisticsSending(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z3;->b()Lcom/yandex/metrica/CounterConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->u(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->i:Lcom/yandex/metrica/impl/ob/T1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/B;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/T1;->b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/Q1;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/coreutils/logger/a;->isEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Set user profile ID: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/B;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/B;->c:Lcom/yandex/metrica/impl/ob/cm;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/coreutils/logger/a;->i(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
