.class public Lcom/yandex/metrica/impl/ob/pl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Kk;

.field private final b:Lcom/yandex/metrica/impl/ob/Ik;

.field private final c:Lcom/yandex/metrica/impl/ob/Jk;

.field private final d:Lcom/yandex/metrica/impl/ob/Gk;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Kk;Lcom/yandex/metrica/impl/ob/Ik;Lcom/yandex/metrica/impl/ob/Jk;Lcom/yandex/metrica/impl/ob/Gk;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/pl;->a:Lcom/yandex/metrica/impl/ob/Kk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/pl;->b:Lcom/yandex/metrica/impl/ob/Ik;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/pl;->c:Lcom/yandex/metrica/impl/ob/Jk;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/pl;->d:Lcom/yandex/metrica/impl/ob/Gk;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/pl;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/dl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/Ak;J)Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pl;->a:Lcom/yandex/metrica/impl/ob/Kk;

    .line 2
    .line 3
    invoke-interface {v0, p1, p5, p6}, Lcom/yandex/metrica/impl/ob/Kk;->a(Landroid/app/Activity;J)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/pl;->c:Lcom/yandex/metrica/impl/ob/Jk;

    .line 8
    .line 9
    new-instance p6, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/pl;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p5, p1, p6, v0}, Lcom/yandex/metrica/impl/ob/Jk;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/pl;->d:Lcom/yandex/metrica/impl/ob/Gk;

    .line 20
    .line 21
    new-instance p6, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {p6}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p5, p6}, Lcom/yandex/metrica/impl/ob/Gk;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    .line 35
    .line 36
    .line 37
    move-result-object p5

    .line 38
    array-length p5, p5

    .line 39
    add-int/lit8 p5, p5, -0x2

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p6

    .line 45
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    .line 46
    .line 47
    .line 48
    move-result-object p6

    .line 49
    array-length p6, p6

    .line 50
    add-int/2addr p6, p5

    .line 51
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/pl;->b:Lcom/yandex/metrica/impl/ob/Ik;

    .line 52
    .line 53
    add-int/lit8 p6, p6, -0x2

    .line 54
    .line 55
    invoke-interface {p5, p2, p3, p4, p6}, Lcom/yandex/metrica/impl/ob/Ik;->a(Lcom/yandex/metrica/impl/ob/dl;Lcom/yandex/metrica/impl/ob/hl;Lcom/yandex/metrica/impl/ob/Ak;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/pl;->c:Lcom/yandex/metrica/impl/ob/Jk;

    .line 60
    .line 61
    iget-object p4, p0, Lcom/yandex/metrica/impl/ob/pl;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {p3, p1, p2, p4}, Lcom/yandex/metrica/impl/ob/Jk;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    :catchall_0
    return-object p1
.end method
