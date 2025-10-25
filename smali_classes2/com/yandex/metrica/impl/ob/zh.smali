.class Lcom/yandex/metrica/impl/ob/zh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yandex/metrica/impl/ob/x2;

.field private final c:Ldc/d;

.field private final d:Lcom/yandex/metrica/impl/ob/xh;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/wh;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/x2;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/x2;-><init>()V

    new-instance v1, Ldc/c;

    invoke-direct {v1}, Ldc/c;-><init>()V

    new-instance v2, Lcom/yandex/metrica/impl/ob/xh;

    invoke-direct {v2, p2}, Lcom/yandex/metrica/impl/ob/xh;-><init>(Lcom/yandex/metrica/impl/ob/wh;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/metrica/impl/ob/zh;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/x2;Ldc/d;Lcom/yandex/metrica/impl/ob/xh;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/x2;Ldc/d;Lcom/yandex/metrica/impl/ob/xh;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/zh;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->c:Ldc/d;

    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Gh;ILcom/yandex/metrica/impl/ob/di;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    .line 2
    .line 3
    iget-wide v1, p3, Lcom/yandex/metrica/impl/ob/di;->g:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/xh;->a(J)V

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/zh;->b:Lcom/yandex/metrica/impl/ob/x2;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/xh;->a(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    iget-wide v6, p3, Lcom/yandex/metrica/impl/ob/di;->g:J

    .line 17
    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "report "

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/yandex/metrica/impl/ob/x2;->b(JJLjava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_0

    .line 42
    .line 43
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast p1, Lcom/yandex/metrica/impl/ob/Jh;

    .line 50
    .line 51
    invoke-virtual {p1, p3, v0}, Lcom/yandex/metrica/impl/ob/Jh;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/zh;->d:Lcom/yandex/metrica/impl/ob/xh;

    .line 55
    .line 56
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/zh;->c:Ldc/d;

    .line 57
    .line 58
    invoke-interface {p3}, Ldc/d;->currentTimeSeconds()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    invoke-virtual {p1, p2, v0, v1}, Lcom/yandex/metrica/impl/ob/xh;->a(IJ)V

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method
