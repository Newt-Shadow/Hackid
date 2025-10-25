.class public Lcom/yandex/metrica/impl/ob/yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/wn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/wn<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ldc/d;

.field final d:J

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ldc/d;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TD;>;",
            "Ldc/d;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yn;->a:Ljava/util/Comparator;

    .line 5
    .line 6
    iput p3, p0, Lcom/yandex/metrica/impl/ob/yn;->b:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yn;->c:Ldc/d;

    .line 9
    .line 10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/yandex/metrica/impl/ob/yn;->d:J

    .line 17
    .line 18
    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/yn;->f:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yn;->c:Ldc/d;

    .line 5
    .line 6
    invoke-interface {v0}, Ldc/d;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/yn;->g:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/zn;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Lcom/yandex/metrica/impl/ob/zn<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    :goto_0
    move p1, v2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/yn;->a:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v3, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 21
    .line 22
    move p1, v1

    .line 23
    :goto_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/yn;->a()V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/yandex/metrica/impl/ob/zn;

    .line 29
    .line 30
    sget-object v0, Lcom/yandex/metrica/impl/ob/zn$a;->a:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_2
    iget p1, p0, Lcom/yandex/metrica/impl/ob/yn;->f:I

    .line 39
    .line 40
    add-int/2addr p1, v1

    .line 41
    iput p1, p0, Lcom/yandex/metrica/impl/ob/yn;->f:I

    .line 42
    .line 43
    iget v0, p0, Lcom/yandex/metrica/impl/ob/yn;->b:I

    .line 44
    .line 45
    rem-int/2addr p1, v0

    .line 46
    iput p1, p0, Lcom/yandex/metrica/impl/ob/yn;->f:I

    .line 47
    .line 48
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yn;->c:Ldc/d;

    .line 49
    .line 50
    invoke-interface {p1}, Ldc/d;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/yn;->g:J

    .line 55
    .line 56
    sub-long/2addr v3, v5

    .line 57
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/yn;->d:J

    .line 58
    .line 59
    cmp-long p1, v3, v5

    .line 60
    .line 61
    if-ltz p1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v1, v2

    .line 65
    :goto_2
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/yn;->a()V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lcom/yandex/metrica/impl/ob/zn;

    .line 71
    .line 72
    sget-object v0, Lcom/yandex/metrica/impl/ob/zn$a;->c:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :cond_4
    iget p1, p0, Lcom/yandex/metrica/impl/ob/yn;->f:I

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/yn;->a()V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lcom/yandex/metrica/impl/ob/zn;

    .line 88
    .line 89
    sget-object v0, Lcom/yandex/metrica/impl/ob/zn$a;->c:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-object p1

    .line 97
    :cond_5
    new-instance p1, Lcom/yandex/metrica/impl/ob/zn;

    .line 98
    .line 99
    sget-object v0, Lcom/yandex/metrica/impl/ob/zn$a;->b:Lcom/yandex/metrica/impl/ob/zn$a;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yn;->e:Ljava/lang/Object;

    .line 102
    .line 103
    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/zn;-><init>(Lcom/yandex/metrica/impl/ob/zn$a;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method
