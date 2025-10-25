.class Lcom/yandex/metrica/impl/ob/Rc;
.super Lcom/yandex/metrica/impl/ob/V;
.source "SourceFile"


# instance fields
.field private b:Lcom/yandex/metrica/impl/ob/U7;

.field private c:Lcom/yandex/metrica/impl/ob/Vb;

.field private d:Ldc/c;

.field private final e:Lcom/yandex/metrica/impl/ob/E;

.field private final f:Lcom/yandex/metrica/impl/ob/w;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/V;Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/Vb;Ldc/c;Lcom/yandex/metrica/impl/ob/E;Lcom/yandex/metrica/impl/ob/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/V;-><init>(Lcom/yandex/metrica/impl/ob/V;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rc;->b:Lcom/yandex/metrica/impl/ob/U7;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Rc;->c:Lcom/yandex/metrica/impl/ob/Vb;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Rc;->d:Ldc/c;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Rc;->e:Lcom/yandex/metrica/impl/ob/E;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Rc;->f:Lcom/yandex/metrica/impl/ob/w;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Landroid/location/Location;

    .line 3
    .line 4
    if-eqz v6, :cond_1

    .line 5
    .line 6
    new-instance p1, Lcom/yandex/metrica/impl/ob/Hc;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rc;->f:Lcom/yandex/metrica/impl/ob/w;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/w;->c()Lcom/yandex/metrica/impl/ob/w$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/oc$a;->a(Lcom/yandex/metrica/impl/ob/w$a;)Lcom/yandex/metrica/impl/ob/oc$a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rc;->d:Ldc/c;

    .line 19
    .line 20
    invoke-virtual {v0}, Ldc/c;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rc;->d:Ldc/c;

    .line 25
    .line 26
    invoke-virtual {v0}, Ldc/c;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rc;->e:Lcom/yandex/metrica/impl/ob/E;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/E;->b()Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const/4 v8, 0x0

    .line 37
    move-object v0, p1

    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/Hc;-><init>(Lcom/yandex/metrica/impl/ob/oc$a;JJLandroid/location/Location;Lcom/yandex/metrica/impl/ob/E$b$a;Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rc;->c:Lcom/yandex/metrica/impl/ob/Vb;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Vb;->a(Lcom/yandex/metrica/impl/ob/Hc;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Rc;->b:Lcom/yandex/metrica/impl/ob/U7;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Hc;->e()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {v1, v2, v3, v0}, Lcom/yandex/metrica/impl/ob/J7;->a(JLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
