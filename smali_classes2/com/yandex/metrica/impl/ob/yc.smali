.class Lcom/yandex/metrica/impl/ob/yc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/mc;

.field private b:Lcom/yandex/metrica/impl/ob/V;

.field private c:Landroid/location/Location;

.field private d:J

.field private e:Lcom/yandex/metrica/impl/ob/x2;

.field private f:Lcom/yandex/metrica/impl/ob/Sc;

.field private g:Lcom/yandex/metrica/impl/ob/Rb;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/V;Landroid/location/Location;JLcom/yandex/metrica/impl/ob/x2;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/yc;->b:Lcom/yandex/metrica/impl/ob/V;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    .line 12
    .line 13
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/yc;->e:Lcom/yandex/metrica/impl/ob/x2;

    .line 14
    .line 15
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/yc;->f:Lcom/yandex/metrica/impl/ob/Sc;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/yc;->g:Lcom/yandex/metrica/impl/ob/Rb;

    .line 18
    .line 19
    return-void
.end method

.method private b(Landroid/location/Location;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->e:Lcom/yandex/metrica/impl/ob/x2;

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    .line 16
    .line 17
    iget-wide v7, v1, Lcom/yandex/metrica/impl/ob/mc;->a:J

    .line 18
    .line 19
    const-string v9, "isSavedLocationOutdated"

    .line 20
    .line 21
    invoke-virtual/range {v4 .. v9}, Lcom/yandex/metrica/impl/ob/x2;->a(JJLjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    .line 32
    .line 33
    iget v4, v4, Lcom/yandex/metrica/impl/ob/mc;->b:F

    .line 34
    .line 35
    cmpl-float v2, v2, v4

    .line 36
    .line 37
    if-lez v2, :cond_0

    .line 38
    .line 39
    move v2, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v2, v0

    .line 42
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    sub-long/2addr v4, v6

    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .line 59
    cmp-long p1, v4, v6

    .line 60
    .line 61
    if-ltz p1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move p1, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    :goto_1
    move p1, v3

    .line 67
    :goto_2
    if-nez v1, :cond_3

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    :cond_3
    if-eqz p1, :cond_5

    .line 72
    .line 73
    :cond_4
    move v0, v3

    .line 74
    :cond_5
    return v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/yc;->b(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->c:Landroid/location/Location;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/yc;->d:J

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yc;->b:Lcom/yandex/metrica/impl/ob/V;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/V;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->f:Lcom/yandex/metrica/impl/ob/Sc;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Sc;->a()V

    .line 6
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->g:Lcom/yandex/metrica/impl/ob/Rb;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rb;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/mc;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yc;->a:Lcom/yandex/metrica/impl/ob/mc;

    return-void
.end method
