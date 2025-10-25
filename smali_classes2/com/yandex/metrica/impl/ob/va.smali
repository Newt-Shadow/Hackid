.class public Lcom/yandex/metrica/impl/ob/va;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/metrica/impl/ob/wa;

.field private final d:Lcom/yandex/metrica/impl/ob/Q0;

.field private final e:Ldc/d;

.field private final f:Lcom/yandex/metrica/impl/ob/x2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/Q0;)V
    .locals 7

    .line 1
    new-instance v5, Ldc/c;

    invoke-direct {v5}, Ldc/c;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/va;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/Q0;Ldc/d;Lcom/yandex/metrica/impl/ob/x2;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wa;Lcom/yandex/metrica/impl/ob/Q0;Ldc/d;Lcom/yandex/metrica/impl/ob/x2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/va;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/va;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/va;->c:Lcom/yandex/metrica/impl/ob/wa;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/va;->d:Lcom/yandex/metrica/impl/ob/Q0;

    .line 7
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/va;->e:Ldc/d;

    .line 8
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/va;->f:Lcom/yandex/metrica/impl/ob/x2;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/qa;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/va;->e:Ldc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Ldc/d;->currentTimeSeconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-wide v3, p1, Lcom/yandex/metrica/impl/ob/qa;->a:J

    .line 11
    .line 12
    cmp-long v3, v0, v3

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-gtz v3, :cond_0

    .line 16
    .line 17
    move v3, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v2

    .line 20
    :goto_0
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/va;->d:Lcom/yandex/metrica/impl/ob/Q0;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/yandex/metrica/impl/ob/Q0;->a()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    add-long/2addr v0, v5

    .line 29
    iget-wide v5, p1, Lcom/yandex/metrica/impl/ob/qa;->a:J

    .line 30
    .line 31
    cmp-long v0, v0, v5

    .line 32
    .line 33
    if-gtz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v4, v3

    .line 39
    :goto_1
    if-eqz v4, :cond_3

    .line 40
    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/Z8;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/va;->a:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->g()Lcom/yandex/metrica/impl/ob/S7;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Z8;-><init>(Lcom/yandex/metrica/impl/ob/S7;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/va;->f:Lcom/yandex/metrica/impl/ob/x2;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/va;->c:Lcom/yandex/metrica/impl/ob/wa;

    .line 59
    .line 60
    invoke-interface {v1, v0}, Lcom/yandex/metrica/impl/ob/wa;->a(Lcom/yandex/metrica/impl/ob/Z8;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    iget p1, p1, Lcom/yandex/metrica/impl/ob/qa;->b:I

    .line 65
    .line 66
    int-to-long v5, p1

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/va;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v0, " diagnostics event"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual/range {v2 .. v7}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :cond_3
    return v2
.end method
